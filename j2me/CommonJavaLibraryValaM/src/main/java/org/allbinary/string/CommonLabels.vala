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
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

public class CommonLabels : JObject {
    private static CommonLabels? instance;
    private static bool staticSet_instance = false;
    private static CommonLabels staticGet_instance() {
        if (!CommonLabels.staticSet_instance) {
            CommonLabels.staticSet_instance = true;
            CommonLabels.instance = new CommonLabels();
        }
        return CommonLabels.instance;
    }
    public string WIDTH_LABEL;
    public string HEIGHT_LABEL;
    public string END_LABEL;
    public string TOTAL_LABEL;
    public string INDEX_LABEL;
    public string START_LABEL;
    public string COMMAND_LABEL;
    public string NAME_LABEL;
    public string START;
    public string ELAPSED;
    public string CURRENT;
    public string NEXT;
    public string ITEM_LABEL;
    public string RESULT_;
    public string COLON_SEP;

    // Java field initializers run after the base constructor
    private void initFieldsCommonLabels() {
    this.WIDTH_LABEL = " Width: ";
    this.HEIGHT_LABEL = " Height: ";
    this.END_LABEL = "End: ";
    this.TOTAL_LABEL = "Total: ";
    this.INDEX_LABEL = "index: ";
    this.START_LABEL = "Start: ";
    this.COMMAND_LABEL = "Command: ";
    this.NAME_LABEL = "Name: ";
    this.START = this.START_LABEL;
    this.ELAPSED = " Elapsed: ";
    this.CURRENT = " Current: ";
    this.NEXT = "Next";
    this.ITEM_LABEL = "Item: ";
    this.RESULT_ = "Result: ";
    this.COLON_SEP = ": ";
    }

    public CommonLabels() {
        base();
        this.initFieldsCommonLabels();
    }
    

    public static CommonLabels getInstance() {
        return CommonLabels.staticGet_instance();
    }
}

