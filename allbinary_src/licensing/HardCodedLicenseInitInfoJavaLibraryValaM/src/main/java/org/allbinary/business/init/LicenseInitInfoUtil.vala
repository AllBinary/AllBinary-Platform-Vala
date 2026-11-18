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
// package org.allbinary.business.init

public class LicenseInitInfoUtil : JObject {
    private static LicenseInitInfoUtil? instance;
    private static bool staticSet_instance = false;
    private static LicenseInitInfoUtil staticGet_instance() {
        if (!LicenseInitInfoUtil.staticSet_instance) {
            LicenseInitInfoUtil.staticSet_instance = true;
            LicenseInitInfoUtil.instance = new LicenseInitInfoUtil();
        }
        return LicenseInitInfoUtil.instance;
    }
    public string INITFILENAME;
    public string ABOUT;
    public string PRIVACY_POLICY;
    private string OFFICIAL_ALLBINARY_SERVICES_SERVER;

    // Java field initializers run after the base constructor
    private void initFieldsLicenseInitInfoUtil() {
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php";
    }
    

    public static LicenseInitInfoUtil getInstance() {
        return LicenseInitInfoUtil.staticGet_instance();
    }
    

    public virtual void setFilePath(string filePath) {
    }
    

    public LicenseInitInfoUtil() {
        base();
        this.initFieldsLicenseInitInfoUtil();
    }
    

    public virtual void write(LicenseInitInfo initData) {
    }
    

    public virtual LicenseInitInfo read() {
        return this.readAgain(0);
    }
    

    public virtual LicenseInitInfo readAgain(int32 initializeCounter) {
        LicenseInitInfo licenseInitInfo = new LicenseInitInfo();
        licenseInitInfo.clearServers();
        licenseInitInfo.addServer(this.OFFICIAL_ALLBINARY_SERVICES_SERVER);
        return licenseInitInfo;
    }
}

