// Generated Code Do Not Modify
// package org.allbinary.util
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

//This is a very fast and simple resizable list.
public class BasicArrayList : JObject {
    private const string SIZE = ", Size: ";
    private ArrayUtil arrayUtil;
    public JObject[] objectArray;
    private int32 currentIndex;

    // Java field initializers run after the base constructor
    private void initFieldsBasicArrayList() {
    this.arrayUtil = ArrayUtil.getInstance();
    
    this.currentIndex = 0;
    }
    

    public BasicArrayList(JObject[] objectArray) {
        base();
        this.initFieldsBasicArrayList();
        this.objectArray = objectArray;
    }
    

    public virtual void addAt(int32 index, JObject element) {
        if (index > this.currentIndex || index < 0) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            JSystem.fatal(new JException("IndexOutOfBoundsException", stringBuffer.toString()));
        }
        this.ensureCapacity(this.currentIndex + 1);
        JSystem.arraycopyArray(this.objectArray, index, this.objectArray, index + 1, this.currentIndex - index);
        this.objectArray[index] = element;
        this.currentIndex++;
    }
    

    public virtual bool add(JObject anyType) {
        this.ensureCapacity(this.currentIndex + 1);
        this.objectArray[this.currentIndex++] = anyType;
        return true;
    }
    

    public virtual JObject removeAt(int32 index) {
        if (index >= this.currentIndex) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            JSystem.fatal(new JException("IndexOutOfBoundsException", stringBuffer.toString()));
        }
        JObject oldValue = this.objectArray[index];
        int32 numMoved = this.currentIndex - index - 1;
        if (numMoved > 0) {
            JSystem.arraycopyArray(this.objectArray, index + 1, this.objectArray, index, numMoved);
        }
        this.objectArray[--this.currentIndex] = null;
        return oldValue;
    }
    

    public virtual bool remove(JObject anyType) {
        if (anyType == null) {
            for (int32 index = 0; index < this.currentIndex; index++) {
                if (this.objectArray[index] == null) {
                    int32 numMoved = this.currentIndex - index - 1;
                    if (numMoved > 0) {
                        JSystem.arraycopyArray(this.objectArray, index + 1, this.objectArray, index, numMoved);
                    }
                    this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        } else {
            for (int32 index = 0; index < this.currentIndex; index++) {
                if (anyType == this.objectArray[index] || anyType.equals(this.objectArray[index])) {
                    int32 numMoved = this.currentIndex - index - 1;
                    if (numMoved > 0) {
                        JSystem.arraycopyArray(this.objectArray, index + 1, this.objectArray, index, numMoved);
                    }
                    this.objectArray[--this.currentIndex] = null;
                    return true;
                }
            }
        }
        return false;
    }
    

    public virtual bool removeAll2(BasicArrayList list) {
        bool result = true;
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            if (this.remove(list.@get(index))) {
            } else {
                result = false;
            }
        }
        return result;
    }
    

    public virtual bool addAll2(BasicArrayList list) {
        this.ensureCapacity(this.currentIndex + list.currentIndex);
        int32 listSize = list.currentIndex;
        for (int32 index = 0; index < listSize; index++) {
            this.objectArray[this.currentIndex++] = list.objectArray[index];
        }
        return true;
    }
    

    public virtual bool addAllList(BasicArrayList list) {
        JObject[] newObjectArray = list.toArray();
        return this.addAll(newObjectArray);
    }
    

    public virtual bool addAll(JObject[] newObjectArray) {
        int32 numSize = newObjectArray.length;
        this.ensureCapacity(this.currentIndex + numSize);
        JSystem.arraycopyArray(newObjectArray, 0, this.objectArray, this.currentIndex, numSize);
        this.currentIndex += numSize;
        return numSize != 0;
    }
    

    public virtual void ensureCapacity(int32 minSize) {
        int32 oldCapacity = this.objectArray.length;
        if (minSize > oldCapacity) {
            int32 newCapacity = ((oldCapacity * 3) >> 1) + 1;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, newCapacity);
        }
    }
    

    public virtual void trimToSize() {
        int32 oldCapacity = this.objectArray.length;
        if (this.currentIndex < oldCapacity) {
            this.objectArray = this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
        }
    }
    

    public virtual int32 indexOf(JObject anyType) {
        if (anyType == null) {
            for (int32 i = 0; i < this.currentIndex; i++) {
                if (this.objectArray[i] == null) {
                    return i;
                }
            }
        } else {
            for (int32 i = 0; i < this.currentIndex; i++) {
                if (anyType.equals(this.objectArray[i])) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    public virtual int32 lastIndexOf(JObject anyType) {
        if (anyType == null) {
            for (int32 i = this.currentIndex - 1; i >= 0; i--) {
                if (this.objectArray[i] == null) {
                    return i;
                }
            }
        } else {
            for (int32 i = this.currentIndex - 1; i >= 0; i--) {
                if (anyType.equals(this.objectArray[i])) {
                    return i;
                }
            }
        }
        return -1;
    }
    

    public virtual JObject @get(int32 index) {
        if (index >= this.currentIndex) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            JSystem.fatal(new JException("IndexOutOfBoundsException", stringBuffer.toString()));
        }
        return this.objectArray[index];
    }
    

    public virtual JObject @set(int32 index, JObject element) {
        if (index >= this.currentIndex) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL);
            stringBuffer.appendint(index);
            stringBuffer.append(BasicArrayList.SIZE);
            stringBuffer.appendint(this.currentIndex);
            JSystem.fatal(new JException("IndexOutOfBoundsException", stringBuffer.toString()));
        }
        JObject oldValue = this.objectArray[index];
        this.objectArray[index] = element;
        return oldValue;
    }
    

    public virtual void clear() {
        for (int32 i = 0; i < this.currentIndex; i++) {
            this.objectArray[i] = null;
        }
        this.currentIndex = 0;
    }
    

    public virtual int32 size() {
        return this.currentIndex;
    }
    

    public virtual bool isEmpty() {
        return this.currentIndex == 0;
    }
    

    public virtual bool contains(JObject anyType) {
        return this.indexOf(anyType) >= 0;
    }
    

    public virtual JObject[] toArray() {
        return this.arrayUtil.copyOf(this.objectArray, this.currentIndex);
    }
    

    public virtual JObject[] toArrayType(JObject[] objectArray) {
        if (objectArray.length < this.currentIndex) {
            return this.arrayUtil.copyOfType(this.objectArray, this.currentIndex, "[Ljava.lang.Object;");
        }
        JSystem.arraycopyArray(this.objectArray, 0, objectArray, 0, this.currentIndex);
        if (objectArray.length > this.currentIndex) {
            objectArray[this.currentIndex] = null;
        }
        return objectArray;
    }
    

    public virtual JObject clone() {
        int32 size = this.size();
        BasicArrayList list = new BasicArrayListS(size);
        JObject anyType = null;
        for (int32 index = 0; index < size; index++) {
            anyType = this.objectArray[index];
            list.add(anyType);
        }
        return list;
    }
    

    public override string toString() {
        string COMMA_SEP = CommonSeps.getInstance().COMMA_SEP;
        StringMaker stringBuffer = new StringMaker();
        for (int32 index = 0; index < this.currentIndex; index++) {
            stringBuffer.append(this.objectArray[index].toString());
            stringBuffer.append(COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

