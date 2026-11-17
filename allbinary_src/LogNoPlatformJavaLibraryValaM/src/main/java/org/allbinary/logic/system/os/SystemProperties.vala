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
// package org.allbinary.logic.system.os

//NoPlatform
public class SystemProperties : JObject {
    private static SystemProperties? instance;
    private static bool staticSet_instance = false;
    private static SystemProperties staticGet_instance() {
        if (!SystemProperties.staticSet_instance) {
            SystemProperties.staticSet_instance = true;
            SystemProperties.instance = new SystemProperties();
        }
        return SystemProperties.instance;
    }
    

    public static SystemProperties getInstance() {
        return SystemProperties.staticGet_instance();
    }
    

    public SystemProperties() {
        base();
    }
    

    public virtual string getName() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual string getArch() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual string getVersion() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual string getUserHomePath() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

