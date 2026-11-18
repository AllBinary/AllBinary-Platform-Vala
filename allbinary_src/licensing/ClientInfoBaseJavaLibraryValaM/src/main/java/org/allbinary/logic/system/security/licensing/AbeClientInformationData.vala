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

public class AbeClientInformationData : JObject {
    private static AbeClientInformationData? instance;
    private static bool staticSet_instance = false;
    private static AbeClientInformationData staticGet_instance() {
        if (!AbeClientInformationData.staticSet_instance) {
            AbeClientInformationData.staticSet_instance = true;
            AbeClientInformationData.instance = new AbeClientInformationData();
        }
        return AbeClientInformationData.instance;
    }
    public string KEY;
    public string NAME;
    public string VERSION;
    public string SPECIALNAME;
    public string LICENSEID;
    public string LICENSE_TYPE;
    public string PREVIOUSLICENSEID;
    public string OSNAME;
    public string OSARCH;
    public string OSVERSION;
    public string OS;
    public string HARDWARE;
    public string LICENSESERVERS;
    public string NEWLICENSE;
    public string ISNEW;
    public string SPECIAL;

    // Java field initializers run after the base constructor
    private void initFieldsAbeClientInformationData() {
    this.KEY = "KEY";
    this.NAME = "NAME";
    this.VERSION = "VERSION";
    this.SPECIALNAME = "SPECIALNAME";
    this.LICENSEID = "LICENSEID";
    this.LICENSE_TYPE = "LICENSETYPE";
    this.PREVIOUSLICENSEID = "PREVIOUSLICENSEID";
    this.OSNAME = "OSNAME";
    this.OSARCH = "OSARCH";
    this.OSVERSION = "OSVERSION";
    this.OS = "OS";
    this.HARDWARE = "HARDWARE";
    this.LICENSESERVERS = "LICENSESERVERS";
    this.NEWLICENSE = "NEWLICENSE";
    this.ISNEW = "ISNEW";
    this.SPECIAL = "SPECIAL";
    }
    

    public static AbeClientInformationData getInstance() {
        return AbeClientInformationData.staticGet_instance();
    }
    

    public AbeClientInformationData() {
        base();
        this.initFieldsAbeClientInformationData();
    }
}

