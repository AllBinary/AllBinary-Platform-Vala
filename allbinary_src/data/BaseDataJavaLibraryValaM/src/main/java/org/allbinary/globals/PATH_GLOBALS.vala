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
// import org.allbinary.logic.io.path.AbPathData
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class PATH_GLOBALS : JObject {
    private static PATH_GLOBALS? instance;
    private static bool staticSet_instance = false;
    private static PATH_GLOBALS staticGet_instance() {
        if (!PATH_GLOBALS.staticSet_instance) {
            PATH_GLOBALS.staticSet_instance = true;
            PATH_GLOBALS.instance = new PATH_GLOBALS();
        }
        return PATH_GLOBALS.instance;
    }
    public string DATA_PATH;
    public string INIT_PATH;
    public string VIEWS_PATH;
    public string LOG_PATH;
    public string BACKUP_PATH;

    // Java field initializers run after the base constructor
    private void initFieldsPATH_GLOBALS() {
    
    
    
    
    
    }
    

    public static PATH_GLOBALS getInstance() {
        return PATH_GLOBALS.staticGet_instance();
    }
    

    public PATH_GLOBALS() {
        base();
        this.initFieldsPATH_GLOBALS();
        StringMaker stringBuffer = new StringMaker();
        AbPathData abPathData = AbPathData.getInstance();
        stringBuffer.append("data");
        stringBuffer.append(abPathData.SEPARATOR);
        this.DATA_PATH = stringBuffer.toString();
        stringBuffer.@delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append(CommonStrings.getInstance().INIT);
        stringBuffer.append(abPathData.SEPARATOR);
        this.INIT_PATH = stringBuffer.toString();
        stringBuffer.@delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append("log");
        stringBuffer.append(abPathData.SEPARATOR);
        this.LOG_PATH = stringBuffer.toString();
        stringBuffer.@delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append("backup");
        stringBuffer.append(abPathData.SEPARATOR);
        this.BACKUP_PATH = stringBuffer.toString();
        stringBuffer.@delete(0, stringBuffer.length());
        stringBuffer.append(this.INIT_PATH);
        stringBuffer.append("views");
        stringBuffer.append(abPathData.SEPARATOR);
        this.VIEWS_PATH = stringBuffer.toString();
    }
}

