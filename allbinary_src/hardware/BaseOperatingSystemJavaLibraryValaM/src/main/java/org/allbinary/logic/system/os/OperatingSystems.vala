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

public class OperatingSystems : JObject {
    private static OperatingSystems? instance;
    private static bool staticSet_instance = false;
    private static OperatingSystems staticGet_instance() {
        if (!OperatingSystems.staticSet_instance) {
            OperatingSystems.staticSet_instance = true;
            OperatingSystems.instance = new OperatingSystems();
        }
        return OperatingSystems.instance;
    }
    public string LINUX;
    public string WINDOWS;
    public string SOLARIS;
    public string WINDOWS2000;
    public string WINDOWS_NT;
    public string WINDOWS_10;
    public string WINDOWS_11;
    public string WINDOWS_VISTA;
    public string WINDOWS_XP;
    public string ANDROID;
    public string HARMONY;
    private bool unknownSpecificOSAllowed;

    // Java field initializers run after the base constructor
    private void initFieldsOperatingSystems() {
    this.LINUX = "Linux";
    this.WINDOWS = "Windows";
    this.SOLARIS = "Solaris";
    this.WINDOWS2000 = "Windows 2000";
    this.WINDOWS_NT = "Windows NT";
    this.WINDOWS_10 = "Windows 10";
    this.WINDOWS_11 = "Windows 11";
    this.WINDOWS_VISTA = "Windows Vista";
    this.WINDOWS_XP = "Windows XP";
    this.ANDROID = this.LINUX;
    this.HARMONY = "HarmonyOS";
    this.unknownSpecificOSAllowed = true;
    }
    

    public OperatingSystems() {
        base();
        this.initFieldsOperatingSystems();
    }
    

    public virtual bool isUnknownSpecificOSAllowed() {
        return this.unknownSpecificOSAllowed;
    }
    

    public virtual void setUnknownSpecificOSAllowed(bool aUnknownSpecificOSAllowed) {
        this.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed;
    }
    

    public static OperatingSystems getInstance() {
        return OperatingSystems.staticGet_instance();
    }
}

