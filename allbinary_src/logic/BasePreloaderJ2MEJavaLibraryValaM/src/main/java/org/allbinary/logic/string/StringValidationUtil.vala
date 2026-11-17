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
// package org.allbinary.logic.string
// import org.allbinary.TsUtil

public class StringValidationUtil : JObject {
    private static StringValidationUtil? instance;
    private static bool staticSet_instance = false;
    private static StringValidationUtil staticGet_instance() {
        if (!StringValidationUtil.staticSet_instance) {
            StringValidationUtil.staticSet_instance = true;
            StringValidationUtil.instance = new StringValidationUtil();
        }
        return StringValidationUtil.instance;
    }
    private StringUtil stringUtil;
    private TsUtil tsUtil;

    // Java field initializers run after the base constructor
    private void initFieldsStringValidationUtil() {
    this.stringUtil = StringUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    }
    

    public static StringValidationUtil getInstance() {
        return StringValidationUtil.staticGet_instance();
    }
    

    public StringValidationUtil() {
        base();
        this.initFieldsStringValidationUtil();
    }
    

    public virtual bool containsSpaces(string value) {
        if (JString.indexOfChar(value, ((uint16) ' ')) >= 0) {
            return true;
        }
        return false;
    }
    

    public virtual bool isNumber(string value) {
        int32 numberOfDecimalPoints = 0;
        for (int32 index = 0; index < JString.length(value); index++) {
            uint16 digit = JString.charAt(value, index);
            if (!this.isNumberFromChar(digit) && digit != ((uint16) '.')) {
                return false;
            }
            if (digit == ((uint16) '.')) {
                numberOfDecimalPoints++;
                if (numberOfDecimalPoints > 1) {
                    return false;
                }
            }
        }
        return true;
    }
    

    public virtual bool isNumberFromChar(uint16 digit) {
        if (digit != ((uint16) '0') && digit != ((uint16) '1') && digit != ((uint16) '2') && digit != ((uint16) '3') && digit != ((uint16) '4') && digit != ((uint16) '5') && digit != ((uint16) '6') && digit != ((uint16) '7') && digit != ((uint16) '8') && digit != ((uint16) '9')) {
            return false;
        }
        return true;
    }
    

    public virtual bool isValidRequired(string value, int32 min, int32 max) {
        if (JString.length(value) < min || JString.length(value) > max) {
            return false;
        }
        return true;
    }
    

    public virtual bool isValidRequiredNumber(string value, int32 min, int32 max) {
        if (this.isEmpty(value) || JString.length(value) < min || JString.length(value) > max) {
            return false;
        }
        if (!this.isNumber(value)) {
            return false;
        }
        return true;
    }
    

    public virtual bool isValidNotRequired(string value, int32 min, int32 max) {
        if (JString.length(value) > 0) {
            if (JString.length(value) < min || JString.length(value) > max) {
                return false;
            }
        }
        return true;
    }
    

    public virtual bool isValidNotRequiredNumber(string value, int32 min, int32 max) {
        if (JString.length(value) > 0) {
            if (this.tsUtil.compareTo(value, this.stringUtil.NULL_STRING) == 0 || JString.length(value) < min || JString.length(value) > max) {
                return false;
            }
            if (!this.isNumber(value)) {
                return false;
            }
        }
        return true;
    }
    

    public virtual bool isEmpty(string string) {
        if (this.tsUtil.compareTo(string, this.stringUtil.NULL_STRING) != 0 && this.tsUtil.compareTo(string, this.stringUtil.EMPTY_STRING) != 0) {
            return false;
        } else {
            return true;
        }
    }
}

