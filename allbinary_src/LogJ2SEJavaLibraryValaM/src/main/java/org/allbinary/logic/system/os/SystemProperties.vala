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

//ActualPlatform
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
    private string OS_NAME;
    private string OS_ARCH;
    private string OS_VERSION;
    private string USER_HOME;

    // Java field initializers run after the base constructor
    private void initFieldsSystemProperties() {
    this.OS_NAME = "os.name";
    this.OS_ARCH = "os.arch";
    this.OS_VERSION = "os.version";
    this.USER_HOME = "user.home";
    }
    

    public static SystemProperties getInstance() {
        return SystemProperties.staticGet_instance();
    }
    

    public SystemProperties() {
        base();
        this.initFieldsSystemProperties();
    }
    

    public virtual string getName() {
        return System.getProperty(this.OS_NAME);
    }
    

    public virtual string getArch() {
        return System.getProperty(this.OS_ARCH);
    }
    

    public virtual string getVersion() {
        return System.getProperty(this.OS_VERSION);
    }
    

    public virtual string getUserHomePath() {
        return System.getProperty(this.USER_HOME);
    }
}

