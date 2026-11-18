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
// package org.allbinary.globals
// import org.allbinary.logic.string.StringUtil

//implements
public class AppUrlGlobals : UrlGlobalsInterface {
    public static AppUrlGlobals? NULL_APP_URL_GLOBALS;
    private static bool staticSet_NULL_APP_URL_GLOBALS = false;
    public static AppUrlGlobals staticGet_NULL_APP_URL_GLOBALS() {
        if (!AppUrlGlobals.staticSet_NULL_APP_URL_GLOBALS) {
            AppUrlGlobals.staticSet_NULL_APP_URL_GLOBALS = true;
            AppUrlGlobals.NULL_APP_URL_GLOBALS = new AppUrlGlobals();
        }
        return AppUrlGlobals.NULL_APP_URL_GLOBALS;
    }
    private string path;

    // Java field initializers run after the base constructor
    private void initFieldsAppUrlGlobals() {
    this.path = StringUtil.getInstance().EMPTY_STRING;
    }

    public AppUrlGlobals() {
        base();
        this.initFieldsAppUrlGlobals();
    }
    

    public override bool isTestingMode() {
        return false;
    }
    

    public override string getWebappPath() {
        return this.path;
    }
    

    public virtual void setWebappPath(string path) {
        this.path = path;
        if (!(this.path.has_suffix("\\") || this.path.has_suffix("/"))) {
            this.path = JString.ofString(this.path) + JString.ofString("\\");
        }
    }
    

    public override string getTestHtmlPath() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public override string getMainPath() {
        return this.path;
    }
}

