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
// package org.allbinary.logic.system.security.licensing
// import javax.microedition.lcdui.CommandListener

public class LicenseUtil : JObject {
    private static LicenseUtil? instance;
    private static bool staticSet_instance = false;
    private static LicenseUtil staticGet_instance() {
        if (!LicenseUtil.staticSet_instance) {
            LicenseUtil.staticSet_instance = true;
            LicenseUtil.instance = new LicenseUtil();
        }
        return LicenseUtil.instance;
    }

    public LicenseUtil() {
        base();
    }
    

    public static LicenseUtil getInstance() {
        return LicenseUtil.staticGet_instance();
    }
    

    public virtual void init() {
    }
    

    public virtual bool isRunning() {
        return false;
    }
    

    public virtual void setRunning(bool running) {
    }
    

    public virtual bool shouldWait(CommandListener commandListener) {
        return this.isRunning();
    }
}

