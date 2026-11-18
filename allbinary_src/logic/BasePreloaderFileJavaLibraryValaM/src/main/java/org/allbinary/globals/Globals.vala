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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.logic.system.loader.WebappClassLoaderInfo
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

public class Globals : JObject {
    private static Globals? instance;
    private static bool staticSet_instance = false;
    private static Globals staticGet_instance() {
        if (!Globals.staticSet_instance) {
            Globals.staticSet_instance = true;
            Globals.instance = new Globals();
        }
        return Globals.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsGlobals() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public static Globals getInstance() {
        return Globals.staticGet_instance();
    }
    

    public Globals() {
        base();
        this.initFieldsGlobals();
    }
    

    public virtual void init(ClassLoader classLoader, string pathString) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        AppUrlGlobals appUrlGlobals = new AppUrlGlobals();
        appUrlGlobals.setWebappPath(pathString);
        .URLGLOBALS.init(appUrlGlobals);
        WebappClassLoaderInfo.setLoader(classLoader);
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ");
        stringBuffer.append(pathString);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append(JObject.className(classLoader));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(pathString)) {
            stringBuffer.@delete(0, stringBuffer.length());
            stringBuffer.append("No Path Provided. Using Process Path: ");
            stringBuffer.append(pathString);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(CommonSeps.getInstance().EQUALS);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(.URLGLOBALS.getWebappPath());
            this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        }
        stringBuffer.@delete(0, stringBuffer.length());
        stringBuffer.append("Webapp Path Set To: ");
        stringBuffer.append(.URLGLOBALS.getWebappPath());
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
    }
}

