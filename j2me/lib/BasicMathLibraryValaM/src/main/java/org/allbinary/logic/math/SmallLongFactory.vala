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

public class SmallLongFactory : JObject {
    private static SmallLongFactory? instance;
    private static bool staticSet_instance = false;
    private static SmallLongFactory staticGet_instance() {
        if (!SmallLongFactory.staticSet_instance) {
            SmallLongFactory.staticSet_instance = true;
            SmallLongFactory.instance = new SmallLongFactory();
        }
        return SmallLongFactory.instance;
    }
    public int32 NEGATIVE_MAX;
    public int32 POSITIVE_MAX;
    private int64?[] INTEGER_ARRAY;
    private string[] STRING_ARRAY;
    public int32 MIN_;
    public int32 lastMin;
    public int32 lastNegativeMin;

    // Java field initializers run after the base constructor
    private void initFieldsSmallLongFactory() {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    this.INTEGER_ARRAY = new int64?[this.NEGATIVE_MAX + this.POSITIVE_MAX];
    this.STRING_ARRAY = new string[this.NEGATIVE_MAX + this.POSITIVE_MAX];
    this.MIN_ = 0;
    this.lastMin = 0;
    this.lastNegativeMin = 0;
    }
    

    public static SmallLongFactory getInstance() {
        return SmallLongFactory.staticGet_instance();
    }
    

    public virtual void initWithRange(int32 value, int32 negativeValue) {
        for (int32 index = value - 1; index >= this.lastMin; index--) {
            this.INTEGER_ARRAY[index + this.NEGATIVE_MAX] = index;
        }
        for (int32 index = negativeValue - 1; index >= this.lastNegativeMin; index--) {
            this.INTEGER_ARRAY[index] = -index;
        }
        if (this.lastMin < value) {
            this.lastMin = value;
            this.MIN_ = value;
        }
        if (this.lastNegativeMin < negativeValue) {
            this.lastNegativeMin = negativeValue;
        }
    }
    

    public virtual void init() {
        if (this.INTEGER_ARRAY[0] == null) {
            if (this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX) {
                for (int32 index = this.POSITIVE_MAX - 1; index >= this.lastMin; index--) {
                    this.INTEGER_ARRAY[index + this.NEGATIVE_MAX] = index;
                }
                for (int32 index = this.NEGATIVE_MAX - 1; index >= this.lastNegativeMin; index--) {
                    this.INTEGER_ARRAY[index] = -index;
                }
                this.lastMin = this.POSITIVE_MAX;
                this.lastNegativeMin = this.NEGATIVE_MAX;
            }
        }
    }
    

    public SmallLongFactory() {
        base();
        this.initFieldsSmallLongFactory();
    }
    

    public virtual int64? getInstanceNoThrow(int64 index) {
        if (index + ((int64) (this.NEGATIVE_MAX)) > ((int64) (this.INTEGER_ARRAY.length - 1))) {
            return this.INTEGER_ARRAY[-1 + this.NEGATIVE_MAX];
        }
        return this.INTEGER_ARRAY[(((int32) (index))) + this.NEGATIVE_MAX];
    }
    

    public virtual string getString(int32 index) {
        int32 i = index + this.NEGATIVE_MAX;
        if (this.STRING_ARRAY[i] == null) {
            this.STRING_ARRAY[i] = this.INTEGER_ARRAY[i].to_string();
        }
        return this.STRING_ARRAY[i];
    }
}

