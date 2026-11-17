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
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker

public class SmallIntegerSingletonFactory : JObject {
    private static SmallIntegerSingletonFactory? instance;
    private static bool staticSet_instance = false;
    private static SmallIntegerSingletonFactory staticGet_instance() {
        if (!SmallIntegerSingletonFactory.staticSet_instance) {
            SmallIntegerSingletonFactory.staticSet_instance = true;
            SmallIntegerSingletonFactory.instance = new SmallIntegerSingletonFactory();
        }
        return SmallIntegerSingletonFactory.instance;
    }
    public int32 NEGATIVE_MAX;
    public int32 POSITIVE_MAX;
    private int32?[] INTEGER_ARRAY;
    private string[] STRING_ARRAY;
    private int32 MIN_;
    private int32 lastMin;
    private int32 lastNegativeMin;

    // Java field initializers run after the base constructor
    private void initFieldsSmallIntegerSingletonFactory() {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    this.INTEGER_ARRAY = new int32?[this.NEGATIVE_MAX + this.POSITIVE_MAX];
    this.STRING_ARRAY = new string[this.NEGATIVE_MAX + this.POSITIVE_MAX];
    this.MIN_ = 0;
    this.lastMin = 0;
    this.lastNegativeMin = 0;
    }
    

    public static SmallIntegerSingletonFactory getInstance() {
        return SmallIntegerSingletonFactory.staticGet_instance();
    }
    

    public virtual int32 getMin() {
        int32 minAllowed = this.getMinAllowed();
        if (this.MIN_ <= minAllowed) {
            if (J2MEUtil.isJ2ME()) {
            } else if (AndroidUtil.isAndroid()) {
                LogUtil logUtil = LogUtil.getInstance();
                logUtil.putF(new StringMaker().append("Android InputFactory was initialized before GameMidlet: ").appendint(this.MIN_).toString(), this, "getMin");
                this.initWithRange(0x291, 6);
            } else {
                LogUtil logUtil = LogUtil.getInstance();
                logUtil.putF(new StringMaker().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(this.MIN_).toString(), this, "getMin");
                this.initWithRange(0x2D0, 6);
            }
        }
        if (this.MIN_ <= minAllowed) {
            LogUtil logUtil = LogUtil.getInstance();
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", this, "getMin", new JException("Exception", ""));
        }
        return this.MIN_;
    }
    

    private int32 getMinAllowed() {
        if (J2MEUtil.isJ2ME()) {
            return 0;
        } else {
            if (AndroidUtil.isAndroid()) {
                return 0x101;
            } else {
                return 23;
            }
        }
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
        if (this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX) {
            for (int32 index = this.POSITIVE_MAX - 1; index >= this.lastMin; index--) {
                this.INTEGER_ARRAY[index + this.NEGATIVE_MAX] = index;
            }
            for (int32 index = this.NEGATIVE_MAX - 1; index >= this.lastNegativeMin; index--) {
                this.INTEGER_ARRAY[index] = -index;
            }
            this.lastMin = this.POSITIVE_MAX;
            this.MIN_ = this.lastMin;
            this.lastNegativeMin = this.NEGATIVE_MAX;
        }
    }
    

    public SmallIntegerSingletonFactory() {
        base();
        this.initFieldsSmallIntegerSingletonFactory();
        this.initWithRange(23, 0);
    }
    

    public virtual int32? getAt(int32 index) {
        return this.INTEGER_ARRAY[index + this.NEGATIVE_MAX];
    }
    

    public virtual int32? getAtNoThrow(int32 index) {
        if (index + this.NEGATIVE_MAX > this.INTEGER_ARRAY.length - 1) {
            return this.INTEGER_ARRAY[-1 + this.NEGATIVE_MAX];
        }
        return this.INTEGER_ARRAY[index + this.NEGATIVE_MAX];
    }
    

    public virtual int32? createInstance(int32 index) {
        int32? integer = this.getAt(index);
        if (integer == null) {
            integer = index;
        }
        return integer;
    }
    

    public virtual string getString(int32 index) {
        int32 i = index + this.NEGATIVE_MAX;
        if (this.STRING_ARRAY[i] == null) {
            this.STRING_ARRAY[i] = this.INTEGER_ARRAY[i].to_string();
        }
        return this.STRING_ARRAY[i];
    }
}

