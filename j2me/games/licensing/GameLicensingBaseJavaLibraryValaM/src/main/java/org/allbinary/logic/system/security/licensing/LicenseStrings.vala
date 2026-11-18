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

public class LicenseStrings : JObject {
    private static LicenseStrings? instance;
    private static bool staticSet_instance = false;
    private static LicenseStrings staticGet_instance() {
        if (!LicenseStrings.staticSet_instance) {
            LicenseStrings.staticSet_instance = true;
            LicenseStrings.instance = new LicenseStrings();
        }
        return LicenseStrings.instance;
    }
    public string LOCKED;

    // Java field initializers run after the base constructor
    private void initFieldsLicenseStrings() {
    this.LOCKED = "Demo Locked Feature";
    }

    public LicenseStrings() {
        base();
        this.initFieldsLicenseStrings();
    }
    

    public static LicenseStrings getInstance() {
        return LicenseStrings.staticGet_instance();
    }
}

