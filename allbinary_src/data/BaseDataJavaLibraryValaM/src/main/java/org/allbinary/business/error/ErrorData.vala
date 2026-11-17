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
// package org.allbinary.business.error

public class ErrorData : JObject {
    private static ErrorData? instance;
    private static bool staticSet_instance = false;
    private static ErrorData staticGet_instance() {
        if (!ErrorData.staticSet_instance) {
            ErrorData.staticSet_instance = true;
            ErrorData.instance = new ErrorData();
        }
        return ErrorData.instance;
    }
    public string NAME;
    public string TEXT;

    // Java field initializers run after the base constructor
    private void initFieldsErrorData() {
    this.NAME = "ERROR_NAME";
    this.TEXT = "ERROR_TEXT";
    }
    

    public static ErrorData getInstance() {
        return ErrorData.staticGet_instance();
    }
    

    public ErrorData() {
        base();
        this.initFieldsErrorData();
    }
}

