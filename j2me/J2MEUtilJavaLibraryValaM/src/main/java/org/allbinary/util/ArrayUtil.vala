// Generated Code Do Not Modify
// package org.allbinary.util
// import jsinterop.annotations.JsType
// import org.allbinary.logic.math.MathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import jsinterop.annotations.JsMethod

public class ArrayUtil : JObject {
    private static ArrayUtil? instance;
    private static bool staticSet_instance = false;
    private static ArrayUtil staticGet_instance() {
        if (!ArrayUtil.staticSet_instance) {
            ArrayUtil.staticSet_instance = true;
            ArrayUtil.instance = new ArrayUtil();
        }
        return ArrayUtil.instance;
    }
    private MathUtil mathUtil;

    // Java field initializers run after the base constructor
    private void initFieldsArrayUtil() {
    this.mathUtil = MathUtil.getInstance();
    }

    public ArrayUtil() {
        base();
        this.initFieldsArrayUtil();
    }
    

    public static ArrayUtil getInstance() {
        return ArrayUtil.staticGet_instance();
    }
    

    public virtual JObject[] copyOf(JObject[] original, int32 newLength) {
        return this.copyOfType(original, newLength, "[Ljava.lang.Object;");
    }
    

    public virtual JObject[] copyOfType(JObject[] original, int32 newLength, string newType) {
        JObject[] copy = new JObject[newLength];
        JSystem.arraycopyArray(original, 0, copy, 0, this.mathUtil.min(original.length, newLength));
        return copy;
    }
    

    public virtual int8[] copyOfbyte(int8[] original, int32 newLength) {
        int8[] copy = new int8[newLength];
        Memory.move(&copy[0], &original[0], sizeof(int8) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual int16[] copyOfshort(int16[] original, int32 newLength) {
        int16[] copy = new int16[newLength];
        Memory.move(&copy[0], &original[0], sizeof(int16) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual int32[] copyOfint(int32[] original, int32 newLength) {
        int32[] copy = new int32[newLength];
        Memory.move(&copy[0], &original[0], sizeof(int32) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual int64[] copyOflong(int64[] original, int32 newLength) {
        int64[] copy = new int64[newLength];
        Memory.move(&copy[0], &original[0], sizeof(int64) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual uint16[] copyOfchar(uint16[] original, int32 newLength) {
        uint16[] copy = new uint16[newLength];
        Memory.move(&copy[0], &original[0], sizeof(uint16) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual float[] copyOffloat(float[] original, int32 newLength) {
        float[] copy = new float[newLength];
        Memory.move(&copy[0], &original[0], sizeof(float) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual double[] copyOfdouble(double[] original, int32 newLength) {
        double[] copy = new double[newLength];
        Memory.move(&copy[0], &original[0], sizeof(double) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual bool[] copyOfboolean(bool[] original, int32 newLength) {
        bool[] copy = new bool[newLength];
        Memory.move(&copy[0], &original[0], sizeof(bool) * (this.mathUtil.min(original.length, newLength)));
        return copy;
    }
    

    public virtual void reverse(int32[] intArray) {
        int32 length = intArray.length - 1;
        int32 temp = 0;
        int32 size = length / 2;
        for (int32 index = 0; index <= size; index++) {
            temp = intArray[index];
            intArray[index] = intArray[length - index];
            intArray[length - index] = temp;
        }
    }
    

    public virtual void flip(int32[] intArray, int32 width, int32 height) {
        int32 length = height - 1;
        int32 temp = 0;
        int32 index = 0;
        int32 rowIndex = 0;
        for (int32 y = 0; y <= length / 2; y++) {
            for (int32 x = 0; x < width; x++) {
                rowIndex = ((length - y) * width);
                index = x + (y * width);
                temp = intArray[index];
                intArray[index] = intArray[rowIndex + x];
                intArray[rowIndex + x] = temp;
            }
        }
    }
    

    public virtual string toStringFromTwoDimensionaArray(int32[,] twoDimensionalIntArray) {
        StringMaker stringBuffer = new StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        int32 endIndex = twoDimensionalIntArray.length[0];
        int32 endIndex2 = JArrays.rowInt32(twoDimensionalIntArray, 0).length;
        for (int32 index = 0; index < endIndex; index++) {
            stringBuffer.append(commonSeps.BRACE_OPEN);
            for (int32 index2 = 0; index2 < endIndex2; index2++) {
                stringBuffer.appendint(((int32) (twoDimensionalIntArray[index, index2])));
                stringBuffer.append(commonSeps.COMMA_SEP);
            }
            stringBuffer.append(commonSeps.BRACE_CLOSE);
            stringBuffer.append(commonSeps.NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    public virtual string toStringFromObjectArray(JObject[] objectArray) {
        StringMaker stringBuffer = new StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        for (int32 index = 0; index < objectArray.length; index++) {
            stringBuffer.append(StringUtil.getInstance().toString1(objectArray[index]));
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
    

    public virtual string toStringFromByteArray(int8[] byteArray) {
        StringMaker stringBuffer = new StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        for (int32 index = 0; index < byteArray.length; index++) {
            stringBuffer.appendbyte(byteArray[index]);
            stringBuffer.append(commonSeps.COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

