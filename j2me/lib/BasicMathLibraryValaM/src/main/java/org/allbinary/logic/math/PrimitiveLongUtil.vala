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
// package org.allbinary.logic.math
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class PrimitiveLongUtil : JObject {
    public LogUtil logUtil;
    private int32 powerOfTen;
    private int32 maxValue;
    private int32 maxDigits;
    private uint16[] charArray;
    private int32 currentTotalDigits;
    private PrimitiveLongSingleton primitiveLongSingleton;

    // Java field initializers run after the base constructor
    private void initFieldsPrimitiveLongUtil() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    this.currentTotalDigits = 0;
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance();
    }
    

    public static PrimitiveLongUtil createPowerOfTen(int32 powerOfTen) {
        PrimitiveLongUtil primitiveLongUtil = new PrimitiveLongUtil(powerOfTen, NullUtil.getInstance().NULL_OBJECT);
        if (powerOfTen % 10 != 0) {
            LogUtil logUtil = LogUtil.getInstance();
            CommonStrings commonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, new JException("Exception", "Max must be power of 10"));
        }
        return primitiveLongUtil;
    }
    

    public PrimitiveLongUtil(int32 powerOfTen, JObject unused) {
        base();
        this.initFieldsPrimitiveLongUtil();
        this.maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen);
        this.powerOfTen = powerOfTen;
        this.maxValue = (powerOfTen * 10) - 1;
        this.charArray = new uint16[this.maxDigits];
    }
    

    public virtual uint16[] getCharArray(int32 value) {
        if (value < 10) {
            this.setCurrentTotalDigits(1);
            return JArrays.rowUint16(this.primitiveLongSingleton.NUMBER_CHAR_ARRAYS, value);
        }
        if (value > this.maxValue) {
            this.setCurrentTotalDigits(3);
            return this.primitiveLongSingleton.UNK;
        }
        int32 index = 0;
        int32 div = this.powerOfTen;
        int32 lastValue = 0;
        while (div >= 1) {
            int32 digit = (value - lastValue) / div;
            if (digit >= 0 && digit < 10) {
                if (digit == 0 && index == 0) {
                } else {
                    this.charArray[index++] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit];
                }
                lastValue += digit * div;
            }
            div = div / 10;
        }
        this.setCurrentTotalDigits(index);
        return this.charArray;
    }
    

    private void setCurrentTotalDigits(int32 currentTotalDigits) {
        this.currentTotalDigits = currentTotalDigits;
    }
    

    public virtual int32 getCurrentTotalDigits() {
        return this.currentTotalDigits;
    }
    

    public virtual int32 getMaxDigits() {
        return this.maxDigits;
    }
}

