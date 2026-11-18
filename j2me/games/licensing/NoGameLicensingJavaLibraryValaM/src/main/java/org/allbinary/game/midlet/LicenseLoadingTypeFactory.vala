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
// package org.allbinary.game.midlet

public class LicenseLoadingTypeFactory : JObject {
    private static LicenseLoadingTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static LicenseLoadingTypeFactory staticGet_instance() {
        if (!LicenseLoadingTypeFactory.staticSet_instance) {
            LicenseLoadingTypeFactory.staticSet_instance = true;
            LicenseLoadingTypeFactory.instance = new LicenseLoadingTypeFactory();
        }
        return LicenseLoadingTypeFactory.instance;
    }
    public LicenseLoadingType INITIAL_LOADING;
    public LicenseLoadingType GAME_START;
    public LicenseLoadingType LOGIN;
    public LicenseLoadingType OTHER;

    // Java field initializers run after the base constructor
    private void initFieldsLicenseLoadingTypeFactory() {
    this.INITIAL_LOADING = new LicenseLoadingType("Initial Loading");
    this.GAME_START = new LicenseLoadingType("Game Start");
    this.LOGIN = new LicenseLoadingType("Login");
    this.OTHER = new LicenseLoadingType("Other/Usually The First Non Demo Level");
    }

    public LicenseLoadingTypeFactory() {
        base();
        this.initFieldsLicenseLoadingTypeFactory();
    }
    

    public static LicenseLoadingTypeFactory getIntance() {
        return LicenseLoadingTypeFactory.staticGet_instance();
    }
}

