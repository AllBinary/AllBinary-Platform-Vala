// Generated Code Do Not Modify
// package org.allbinary.logic.string
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

public class StringMaker : JObject {
    private uint16[] charArray;
    private int32 currentLength;

    // Java field initializers run after the base constructor
    private void initFieldsStringMaker() {
    
    this.currentLength = 0;
    }
    

    public StringMaker() {
        base();
        this.initFieldsStringMaker();
        this.charArray = new uint16[20];
    }
    

    public virtual StringMaker append(string string) {
        int32 stringLength = JString.length(string);
        this.ensureCapacity(this.currentLength + stringLength);
        JString.getChars(string, 0, stringLength, this.charArray, this.currentLength);
        this.currentLength += stringLength;
        return this;
    }
    

    public virtual StringMaker appendchar(uint16 c) {
        this.ensureCapacity(this.currentLength + 1);
        this.charArray[this.currentLength++] = c;
        return this;
    }
    

    public virtual StringMaker appendCharArray(uint16[] charArray, int32 start, int32 end) {
        this.ensureCapacity(this.currentLength + (end - start));
        for (int32 index = start; index < end; index++) {
            this.charArray[this.currentLength++] = charArray[index];
        }
        return this;
    }
    

    public virtual StringMaker appendbyte(int8 b) {
        this.append((b).to_string());
        return this;
    }
    

    public virtual StringMaker appendshort(int16 b) {
        this.append((b).to_string());
        return this;
    }
    

    public virtual StringMaker appendint(int32 i) {
        this.append((i).to_string());
        return this;
    }
    

    public virtual StringMaker appendlong(int64 l) {
        this.append((l).to_string());
        return this;
    }
    

    public virtual StringMaker appendfloat(float f) {
        this.append(JString.ofDouble(f));
        return this;
    }
    

    public virtual StringMaker appendboolean(bool bool) {
        if (bool) {
            this.ensureCapacity(this.currentLength + 4);
            this.charArray[this.currentLength++] = ((uint16) 't');
            this.charArray[this.currentLength++] = ((uint16) 'r');
            this.charArray[this.currentLength++] = ((uint16) 'u');
            this.charArray[this.currentLength++] = ((uint16) 'e');
        } else {
            this.ensureCapacity(this.currentLength + 5);
            this.charArray[this.currentLength++] = ((uint16) 'f');
            this.charArray[this.currentLength++] = ((uint16) 'a');
            this.charArray[this.currentLength++] = ((uint16) 'l');
            this.charArray[this.currentLength++] = ((uint16) 's');
            this.charArray[this.currentLength++] = ((uint16) 'e');
        }
        return this;
    }
    

    public virtual void ensureCapacity(int32 minSize) {
        int32 oldCapacity = this.charArray.length;
        if (minSize > oldCapacity) {
            int32 newCapacity = oldCapacity * 3;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            uint16[] copy = new uint16[newCapacity];
            int32 min = this.min(this.charArray.length, newCapacity);
            Memory.move(&copy[0], &this.charArray[0], sizeof(uint16) * (min));
            this.charArray = copy;
        }
    }
    

    public virtual int32 min(int32 value, int32 value2) {
        return ((value <= value2) ? value : value2);
    }
    

    public virtual StringMaker @delete(int32 start, int32 end) {
        this.currentLength -= (end - start);
        return this;
    }
    

    public virtual int32 length() {
        return this.currentLength;
    }
    

    public override string toString() {
        return JString.fromChars(this.charArray, 0, this.currentLength);
    }
}

