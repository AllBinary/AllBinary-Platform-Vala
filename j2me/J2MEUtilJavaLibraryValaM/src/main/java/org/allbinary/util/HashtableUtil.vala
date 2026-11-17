/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.util
// import java.util.Enumeration
// import jsinterop.annotations.JsType

public class HashtableUtil : JObject {
    private static HashtableUtil? instance;
    private static bool staticSet_instance = false;
    private static HashtableUtil staticGet_instance() {
        if (!HashtableUtil.staticSet_instance) {
            HashtableUtil.staticSet_instance = true;
            HashtableUtil.instance = new HashtableUtil();
        }
        return HashtableUtil.instance;
    }
    private EnumerationUtil enumerationUtil;

    // Java field initializers run after the base constructor
    private void initFieldsHashtableUtil() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    }

    public HashtableUtil() {
        base();
        this.initFieldsHashtableUtil();
    }
    

    public static HashtableUtil getInstance() {
        return HashtableUtil.staticGet_instance();
    }
    

    public virtual void putAll(ABHashtable fromHashtable, ABHashtable hashtable) {
        Enumeration enumeration = fromHashtable.keys();
        JObject keyCanBeNull = null;
        JObject valueCanBeNull = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            keyCanBeNull = this.enumerationUtil.nextElement(enumeration);
            valueCanBeNull = hashtable.@get(keyCanBeNull);
            if (valueCanBeNull == null) {
            } else {
                hashtable.put(keyCanBeNull, valueCanBeNull);
            }
        }
    }
    

    public virtual JObject[] getKeysAsArray(ABHashtable hashtable) {
        JObject[] objectArray = new JObject[hashtable.size()];
        int32 index = 0;
        Enumeration enumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            objectArray[index++] = this.enumerationUtil.nextElement(enumeration);
        }
        return objectArray;
    }
    

    public virtual BasicArrayList getKeysAsList(ABHashtable hashtable) {
        BasicArrayList list = new BasicArrayListS(hashtable.size());
        Enumeration enumeration = hashtable.keys();
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            list.add(this.enumerationUtil.nextElement(enumeration));
        }
        return list;
    }
}

