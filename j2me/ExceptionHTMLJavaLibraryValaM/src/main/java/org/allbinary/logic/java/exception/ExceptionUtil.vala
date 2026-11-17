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
// package org.allbinary.logic.java.exception
// import jsinterop.annotations.JsType

//ActualPlatform
public class ExceptionUtil : JObject {
    private static ExceptionUtil? instance;
    private static bool staticSet_instance = false;
    private static ExceptionUtil staticGet_instance() {
        if (!ExceptionUtil.staticSet_instance) {
            ExceptionUtil.staticSet_instance = true;
            ExceptionUtil.instance = new ExceptionUtil();
        }
        return ExceptionUtil.instance;
    }
    public static JException? PRETEND_EXCEPTION;
    private static bool staticSet_PRETEND_EXCEPTION = false;
    public static JException staticGet_PRETEND_EXCEPTION() {
        if (!ExceptionUtil.staticSet_PRETEND_EXCEPTION) {
            ExceptionUtil.staticSet_PRETEND_EXCEPTION = true;
            ExceptionUtil.PRETEND_EXCEPTION = new JException("Exception", "Not Really An Exception");
        }
        return ExceptionUtil.PRETEND_EXCEPTION;
    }
    private string NONE;

    // Java field initializers run after the base constructor
    private void initFieldsExceptionUtil() {
    this.NONE = "No Stack Trace";
    }
    

    public static ExceptionUtil getInstance() {
        return ExceptionUtil.staticGet_instance();
    }
    

    public ExceptionUtil() {
        base();
        this.initFieldsExceptionUtil();
    }
    

    public virtual string getStackTrace(JException e) {
        e.printStackTrace();
        return this.NONE;
    }
}

