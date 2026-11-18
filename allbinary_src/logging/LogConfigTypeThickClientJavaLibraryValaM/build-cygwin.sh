#!/usr/bin/env bash

# Compiles the Vala sources the Vala converter generated as a Vala library with Cygwin valac and gcc.
# The hand written runtime (allbinary_java.vala) is compiled first as J2SEForValaLibrary. The .vapi and header of each
# dependency come from META-INF/vala of its jar. This project's .vapi, header, and lib<artifactId>.a are written to
# <output>/vapi, <output>/include, and <output>/lib. valac needs paths relative to the working folder so the sources are
# compiled in a copy in object_dir.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$6"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Vala sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
mkdir -p "$output_dir/vapi" "$output_dir/include" "$output_dir/lib" "$object_dir/runtime" "$object_dir/src"

fail() {
    echo "Vala build failed: $1" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
    exit 0
}

# The runtime library
# The runtime and its java/... classes (one class per file) are compiled together
find "$runtime_dir" -name "*.vala" -exec cp -t "$object_dir/runtime/" {} +
cd "$object_dir/runtime" || exit 1
"$compiler" --library=J2SEForValaLibrary --vapi=J2SEForValaLibrary.vapi -H J2SEForValaLibrary.h -c ./*.vala "${compiler_flags[@]}" || fail "runtime"

# This project with the runtime and the .vapi files of the dependencies
cp -R "$source_dir/." "$object_dir/src/"
cd "$object_dir/src" || exit 1
cp ../runtime/J2SEForValaLibrary.vapi ../runtime/J2SEForValaLibrary.h .
vapis=(J2SEForValaLibrary.vapi)
if [ -d "$dependency_dir/vapi" ]; then
    for vapi in "$dependency_dir"/vapi/*.vapi; do
        [ -e "$vapi" ] || continue
        cp "$vapi" .
        vapis+=("$(basename "$vapi")")
    done
    cp "$dependency_dir"/include/*.h . 2>/dev/null
fi
files=()
while IFS= read -r -d '' file; do files+=("${file#./}"); done < <(find . -type f -name '*.vala' -print0 | sort -z)
echo "Vala sources: ${#files[@]}"
# Like Java, the optional dependencies of a dependency are not here. A dependency .vapi member that uses one of their
# types is removed and a header of one is an empty stand in, then valac runs again.
# A C type of such a class in a dependency header is an opaque typedef in jmissing.h, which every C file includes first.
: > jmissing.h
compiled=false
for attempt in 1 2 3 4 5 6 7 8; do
    output="$("$compiler" --library="$artifact" --vapi="$artifact.vapi" -H "$artifact.h" -c "${vapis[@]}" "${files[@]}" "${compiler_flags[@]}" -X -I. -X -include -X jmissing.h 2>&1)"
    status=$?
    if [ "$status" = "0" ]; then
        echo "$output"
        compiled=true
        break
    fi
    changed=false
    while IFS='|' read -r vapi type; do
        case " ${vapis[*]} " in *" $vapi "*) ;; *) continue ;; esac
        if [ "$vapi" != "J2SEForValaLibrary.vapi" ] && grep -q "\b$type\b" "$vapi"; then
            before="$(cksum < "$vapi")"
            sed -i "/\b$type\b.*;\s*\$/d" "$vapi"
            # A class that extends or implements the missing type (MusicThreadPool : ThreadPool) is removed with its block
            awk -v type="$type" '
                BEGIN { skipping = 0; held = "" }
                {
                    if (skipping) { if ($0 ~ /^}/) { skipping = 0 } next }
                    if ($0 ~ ("^public (abstract )?(class|interface) [A-Za-z0-9_]+ : (.*[ ,])?" type "[ ,{]")) { skipping = 1; held = ""; next }
                    if (held != "") { print held; held = "" }
                    if ($0 ~ /^\[CCode/) { held = $0; next }
                    print
                }
                END { if (held != "") print held }' "$vapi" > "$vapi.tmp" && mv "$vapi.tmp" "$vapi"
            if [ "$before" != "$(cksum < "$vapi")" ]; then
                changed=true
            fi
        fi
    done < <(echo "$output" | sed -n "s/^\([^:]*\.vapi\):.*error: The type name \`\([A-Za-z0-9_]*\)' could not be found.*/\1|\2/p" | sort -u)
    while IFS= read -r header; do
        if [ ! -e "$header" ]; then
            : > "$header"
            changed=true
        fi
    done < <(echo "$output" | sed -n 's/.*fatal error: \([A-Za-z0-9_]*\.h\): No such file or directory.*/\1/p' | sort -u)
    # A class of this project replaces a dependency class with the same name like the Java class path
    while IFS= read -r type; do
        for vapi in "${vapis[@]}"; do
            [ "$vapi" = "J2SEForValaLibrary.vapi" ] && continue
            if grep -q -E "^public (abstract )?(class|interface) $type[ :{]" "$vapi"; then
                awk -v type="$type" '
                    BEGIN { skipping = 0; held = "" }
                    {
                        if (skipping) { if ($0 ~ /^}/) { skipping = 0 } next }
                        if ($0 ~ ("^public (abstract )?(class|interface) " type "[ :{]")) { skipping = 1; held = ""; next }
                        if (held != "") { print held; held = "" }
                        if ($0 ~ /^\[CCode/) { held = $0; next }
                        print
                    }
                    END { if (held != "") print held }' "$vapi" > "$vapi.tmp" && mv "$vapi.tmp" "$vapi"
                changed=true
            fi
        done
    done < <(echo "$output" | sed -n "s/.*error: The root namespace already contains a definition for \`\([A-Za-z0-9_]*\)'.*/\1/p" | sort -u)
    # The C header of a dependency still has the class the project replaces (struct _PositionStrings in
    # BaseMathLibraryVala.h and in this project's header): the dependency header's names of it are renamed JDep_...
    while IFS='|' read -r header type; do
        # When the redefinition is reported in this project's header the dependency header defined it first
        headers=("$header")
        if [ "$header" = "$artifact.h" ]; then
            headers=()
            for other in ./*.h; do
                other="${other#./}"
                [ "$other" = "$artifact.h" ] && continue
                grep -q "struct _$type {" "$other" && headers+=("$other")
            done
        fi
        type="${type%Class}"
        type="${type%Private}"
        type="${type%Iface}"
        snake="$(echo "$type" | sed -E 's/([a-z0-9])([A-Z])/\1_\2/g' | tr 'A-Z' 'a-z')"
        upper="$(echo "$snake" | tr 'a-z' 'A-Z')"
        for header in "${headers[@]}"; do
            [ -e "$header" ] || continue
            if grep -q -E "\b_?$type" "$header"; then
                sed -i -E "s/\b(_?)$type/\1JDep_$type/g; s/\b${snake}_/jdep_${snake}_/g; s/\bTYPE_${upper}\b/JDEP_TYPE_${upper}/g; s/\b${upper}_/JDEP_${upper}_/g" "$header"
                changed=true
            fi
        done
    done < <(echo "$output" | sed -n "s/^\.\/\([A-Za-z0-9_.-]*\.h\):[0-9]*:[0-9]*: error: redefinition of 'struct _\([A-Za-z0-9_]*\)'.*/\1|\2/p" | sort -u)
    # A dependency header class whose superclass is an optional dependency's (MusicThreadPool : ThreadPool) was left out of
    # the .vapi above: its C structs are removed from the header too
    while IFS='|' read -r header line; do
        [ "$header" = "$artifact.h" ] && continue
        [ -e "$header" ] || continue
        start="$(head -n "$line" "$header" | grep -n '^struct _' | tail -1 | cut -d: -f1)"
        [ -n "$start" ] || continue
        end="$(tail -n +"$start" "$header" | grep -n '^};' | head -1 | cut -d: -f1)"
        [ -n "$end" ] || continue
        sed -i "${start},$((start + end - 1))d" "$header"
        changed=true
    done < <(echo "$output" | sed -n "s/^\.\/\([A-Za-z0-9_.-]*\.h\):\([0-9]*\):[0-9]*: error: field 'parent_\(instance\|class\)' has incomplete type.*/\1|\2/p" | sort -t'|' -k1,1 -k2,2nr -u)
    while IFS= read -r type; do
        if ! grep -q "typedef struct _$type $type;" jmissing.h; then
            echo "typedef struct _$type $type;" >> jmissing.h
            changed=true
        fi
    done < <(echo "$output" | sed -n "s/.*error: unknown type name '\([A-Za-z0-9_]*\)'.*/\1/p" | sort -u)
    if [ "$changed" != "true" ]; then
        echo "$output"
        break
    fi
done
[ "$compiled" = "true" ] || fail "$artifact"

cp "$artifact.vapi" "$output_dir/vapi/"
cp "$artifact.h" "$output_dir/include/"
objects=(./*.o)
if [ -e "${objects[0]}" ]; then
    ar rcs "$output_dir/lib/lib$artifact.a" "${objects[@]}"
fi
echo "Vala library: $artifact (${#objects[@]} objects)"
exit 0
