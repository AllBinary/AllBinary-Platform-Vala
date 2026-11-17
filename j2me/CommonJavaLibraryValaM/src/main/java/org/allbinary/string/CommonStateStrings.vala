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

public class CommonStateStrings : JObject {
    private static CommonStateStrings? instance;
    private static bool staticSet_instance = false;
    private static CommonStateStrings staticGet_instance() {
        if (!CommonStateStrings.staticSet_instance) {
            CommonStateStrings.staticSet_instance = true;
            CommonStateStrings.instance = new CommonStateStrings();
        }
        return CommonStateStrings.instance;
    }
    public string CONTEXT;
    public string FINISH;
    public string CREATE;
    public string START;
    public string RESTART;
    public string RESUME;
    public string PAUSE;
    public string STOP;
    public string DESTROY;
    public string BIND;
    public string ON_SAVE_INSTANCE_STATE;
    public string ON_START_COMMAND;

    // Java field initializers run after the base constructor
    private void initFieldsCommonStateStrings() {
    this.CONTEXT = "Context: ";
    this.FINISH = "finish";
    this.CREATE = "onCreate";
    this.START = "onStart";
    this.RESTART = "onRestart";
    this.RESUME = "onResume";
    this.PAUSE = "onPause";
    this.STOP = "onStop";
    this.DESTROY = "onDestroy";
    this.BIND = "onBind";
    this.ON_SAVE_INSTANCE_STATE = "onSaveInstanceState";
    this.ON_START_COMMAND = "onStartCommand";
    }

    public CommonStateStrings() {
        base();
        this.initFieldsCommonStateStrings();
    }
    

    public static CommonStateStrings getInstance() {
        return CommonStateStrings.staticGet_instance();
    }
}

