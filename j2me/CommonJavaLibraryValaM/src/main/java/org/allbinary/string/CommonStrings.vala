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

public class CommonStrings : JObject {
    private static CommonStrings? instance;
    private static bool staticSet_instance = false;
    private static CommonStrings staticGet_instance() {
        if (!CommonStrings.staticSet_instance) {
            CommonStrings.staticSet_instance = true;
            CommonStrings.instance = new CommonStrings();
        }
        return CommonStrings.instance;
    }
    public string EMPTY;
    public string CREATE_IMAGE;
    public string PLEASE_WAIT;
    public string PLEASE_WAIT_FOR_SERVER;
    public string PERIODS;
    public string LOADING;
    public string CONSTRUCTOR;
    public string START;
    public string END;
    public string EXCEPTION;
    public string EXCEPTION_LABEL;
    public string CLEANUP;
    public string INIT;
    public string CLOSE;
    public string UP;
    public string DOWN;
    public string LEFT;
    public string RIGHT;
    public string[] DIRECTION_NAME;
    public string CREATE;
    public string REMOVE;
    public string UPDATE;
    public string DELETE;
    public string @delete;
    public string LOAD;
    public string SAVE;
    public string ADD;
    public string DROP;
    public string INSERT;
    public string VISIT;
    public string START_METHOD_NAME;
    public string END_METHOD_NAME;
    public string GET;
    public string PROCESS;
    public string GET_INSTANCE;
    public string GET_LIST;
    public string RUN;
    public string START_RUNNABLE;
    public string RUNNING;
    public string END_RUNNABLE;
    public string DISABLE;
    public string ENABLE;
    public string SUCCESS;
    public string FAILURE;
    public string NOT_IMPLEMENTED;
    public string UNKNOWN;
    public string ON_EVENT;
    public string IS_VALID;
    public string TOSTRING;
    public string ADD_LISTENER;
    public string REMOVE_LISTENER;
    public string SIZE;

    // Java field initializers run after the base constructor
    private void initFieldsCommonStrings() {
    this.EMPTY = "Empty";
    this.CREATE_IMAGE = "createImage";
    this.PLEASE_WAIT = "Please Wait";
    this.PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server...";
    this.PERIODS = "...";
    this.LOADING = "Loading...";
    this.CONSTRUCTOR = "Constructor";
    this.START = "Start";
    this.END = "End";
    this.EXCEPTION = "Exception";
    this.EXCEPTION_LABEL = "Exception: ";
    this.CLEANUP = "cleanup";
    this.INIT = "init";
    this.CLOSE = "close";
    this.UP = "up";
    this.DOWN = "down";
    this.LEFT = "left";
    this.RIGHT = "right";
    this.DIRECTION_NAME = new string[] {this.DOWN, this.LEFT, this.RIGHT, this.UP};
    this.CREATE = "Create";
    this.REMOVE = "Remove";
    this.UPDATE = "Update";
    this.DELETE = "Delete";
    this.@delete = "delete";
    this.LOAD = "load";
    this.SAVE = "save";
    this.ADD = "Add";
    this.DROP = "Drop";
    this.INSERT = "Insert";
    this.VISIT = "visit";
    this.START_METHOD_NAME = this.START;
    this.END_METHOD_NAME = "end";
    this.GET = "get";
    this.PROCESS = "process";
    this.GET_INSTANCE = "getInstance";
    this.GET_LIST = "getList";
    this.RUN = "run";
    this.START_RUNNABLE = "Start Runnable";
    this.RUNNING = "Running";
    this.END_RUNNABLE = "End Runnable";
    this.DISABLE = "disable";
    this.ENABLE = "enable";
    this.SUCCESS = "Command Success";
    this.FAILURE = "Command Failed";
    this.NOT_IMPLEMENTED = "Not Implemented";
    this.UNKNOWN = "Unknown";
    this.ON_EVENT = "onEvent";
    this.IS_VALID = "isValid";
    this.TOSTRING = "toString";
    this.ADD_LISTENER = "addListener";
    this.REMOVE_LISTENER = "removeListener";
    this.SIZE = "size";
    }

    public CommonStrings() {
        base();
        this.initFieldsCommonStrings();
    }
    

    public static CommonStrings getInstance() {
        return CommonStrings.staticGet_instance();
    }
}

