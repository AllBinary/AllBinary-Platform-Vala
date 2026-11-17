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
// package org.allbinary.string
// import jsinterop.annotations.JsType

public class CommonPhoneStrings : JObject {
    private static CommonPhoneStrings? instance;
    private static bool staticSet_instance = false;
    private static CommonPhoneStrings staticGet_instance() {
        if (!CommonPhoneStrings.staticSet_instance) {
            CommonPhoneStrings.staticSet_instance = true;
            CommonPhoneStrings.instance = new CommonPhoneStrings();
        }
        return CommonPhoneStrings.instance;
    }
    public string UP;
    public string DOWN;
    public string LEFT;
    public string RIGHT;
    public string ZERO;
    public string ONE;
    public string TWO;
    public string THREE;
    public string FOUR;
    public string FIVE;
    public string SIX;
    public string SEVEN;
    public string EIGHT;
    public string NINE;
    public string POUND;
    public string STAR;
    public string FIRE;

    // Java field initializers run after the base constructor
    private void initFieldsCommonPhoneStrings() {
    this.UP = "UP";
    this.DOWN = "DOWN";
    this.LEFT = "LEFT";
    this.RIGHT = "RIGHT";
    this.ZERO = "0";
    this.ONE = "1";
    this.TWO = "2";
    this.THREE = "3";
    this.FOUR = "4";
    this.FIVE = "5";
    this.SIX = "6";
    this.SEVEN = "7";
    this.EIGHT = "8";
    this.NINE = "9";
    this.POUND = "#";
    this.STAR = "*";
    this.FIRE = "FIRE";
    }

    public CommonPhoneStrings() {
        base();
        this.initFieldsCommonPhoneStrings();
    }
    

    public static CommonPhoneStrings getInstance() {
        return CommonPhoneStrings.staticGet_instance();
    }
}

