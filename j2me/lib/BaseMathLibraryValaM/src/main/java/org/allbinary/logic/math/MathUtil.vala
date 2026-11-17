// Generated Code Do Not Modify
// package org.allbinary.logic.math
// import jsinterop.annotations.JsType

public class MathUtil : JObject {
    private static MathUtil? instance;
    private static bool staticSet_instance = false;
    private static MathUtil staticGet_instance() {
        if (!MathUtil.staticSet_instance) {
            MathUtil.staticSet_instance = true;
            MathUtil.instance = new MathUtil();
        }
        return MathUtil.instance;
    }
    private int32 ACCURACY;

    // Java field initializers run after the base constructor
    private void initFieldsMathUtil() {
    this.ACCURACY = 100;
    }

    public MathUtil() {
        base();
        this.initFieldsMathUtil();
    }
    

    public static MathUtil getInstance() {
        return MathUtil.staticGet_instance();
    }
    

    public virtual int32 getTotalDigits(int32 digits) {
        int32 total = 0;
        while (digits > 0) {
            digits = digits / 10;
            total++;
        }
        return total;
    }
    

    public virtual int32 sqrt(int32 value) {
        if (value <= 1) {
            return value;
        }
        int32 accumulated = value >> 1;
        int32 result = (accumulated + (value / accumulated)) >> 1;
        do {
            accumulated = result;
            result = (accumulated + (value / accumulated)) >> 1;
        } while (accumulated > result);
        return accumulated;
    }
    

    public virtual double sqrtd(int32 x) {
        if (x == 0) {
            return ((double) (0.0f));
        }
        if (x < 0) {
            return ((double) (-1.0f));
        }
        double result = ((double) (x));
        for (int32 index = 0; index < this.ACCURACY; index++) {
            result = (result + (((double) (x)) / result)) / 2.0;
        }
        return result;
    }
    

    public virtual int32 abs(int32 value) {
        return ((value < 0) ? -value : value);
    }
    

    public virtual int64 abslong(int64 value) {
        return ((value < 0) ? -value : value);
    }
    

    public virtual int32 min(int32 value, int32 value2) {
        return ((value <= value2) ? value : value2);
    }
    

    public virtual int32 max(int32 value, int32 value2) {
        return ((value >= value2) ? value : value2);
    }
}

