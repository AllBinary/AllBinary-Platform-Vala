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
// package org.allbinary.logic.java.bool
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringValidationUtil

public class BooleanUtil : JObject {
    private static BooleanUtil? instance;
    private static bool staticSet_instance = false;
    private static BooleanUtil staticGet_instance() {
        if (!BooleanUtil.staticSet_instance) {
            BooleanUtil.staticSet_instance = true;
            BooleanUtil.instance = new BooleanUtil();
        }
        return BooleanUtil.instance;
    }
    private TsUtil tsUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBooleanUtil() {
    this.tsUtil = TsUtil.getInstance();
    }
    

    public static BooleanUtil getInstance() {
        return BooleanUtil.staticGet_instance();
    }
    

    public BooleanUtil() {
        base();
        this.initFieldsBooleanUtil();
    }
    

    public virtual bool getFromString(string booleanString) {
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        BooleanFactory booleanFactory = BooleanFactory.getInstance();
        if (stringValidationUtil.isEmpty(booleanString)) {
            return false;
        }
        string booleanStringLowerCase = booleanString.down();
        if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0) {
            return true;
        } else if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return false;
        } else {
            JSystem.fatal(new JException("Exception", "Invalid booleanString - Must be true or false"));
        }
    }
    

    public virtual bool isStringBoolean(string booleanString) {
        BooleanFactory booleanFactory = BooleanFactory.getInstance();
        string booleanStringLowerCase = booleanString.down();
        if (JString.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0 || JString.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return true;
        }
        return false;
    }
    

    public virtual string toStringFromBooleanArray(bool[] booleanArray) {
        StringMaker stringMaker = new StringMaker();
        int32 size = booleanArray.length;
        for (int32 index = 0; index < size; index++) {
            stringMaker.appendboolean(booleanArray[index]);
        }
        return stringMaker.toString();
    }
}

