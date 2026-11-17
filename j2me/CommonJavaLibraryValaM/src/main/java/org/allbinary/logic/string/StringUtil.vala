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
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class StringUtil : JObject {
    private static StringUtil? instance;
    private static bool staticSet_instance = false;
    private static StringUtil staticGet_instance() {
        if (!StringUtil.staticSet_instance) {
            StringUtil.staticSet_instance = true;
            StringUtil.instance = new StringUtil();
        }
        return StringUtil.instance;
    }
    public string INIT_STRING;
    public string NULL_STRING;
    public string EMPTY_STRING;
    public string[] ONE_EMPTY_STRING_ARRAY;
    public string[,] ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    private string[] stringArray;

    // Java field initializers run after the base constructor
    private void initFieldsStringUtil() {
    this.INIT_STRING = "";
    this.NULL_STRING = "null";
    this.EMPTY_STRING = "";
    this.ONE_EMPTY_STRING_ARRAY = new string[] {this.EMPTY_STRING};
    this.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = new string[0, 0];
    this.stringArray = new string[0];
    }
    

    public static StringUtil getInstance() {
        return StringUtil.staticGet_instance();
    }
    

    public StringUtil() {
        base();
        this.initFieldsStringUtil();
    }
    

    public virtual string getNonNull(string string) {
        return string;
    }
    

    public virtual string[] getArrayInstance() {
        return this.stringArray;
    }
    

    public virtual int32 count(string string, uint16 aChar) {
        int32 count = 0;
        int32 size = JString.length(string);
        for (int32 index = 0; index < size; index++) {
            if (JString.charAt(string, index) == aChar) {
                count++;
            }
        }
        return count;
    }
    

    public virtual string toString1(JObject anyType) {
        if (anyType != null) {
            return anyType.toString();
        } else {
            return this.NULL_STRING;
        }
    }
}

