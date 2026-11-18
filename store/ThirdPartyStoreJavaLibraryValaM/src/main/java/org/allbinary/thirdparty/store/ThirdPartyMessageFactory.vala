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
// package org.allbinary.thirdparty.store

public class ThirdPartyMessageFactory : JObject {
    private static ThirdPartyMessageFactory? instance;
    private static bool staticSet_instance = false;
    private static ThirdPartyMessageFactory staticGet_instance() {
        if (!ThirdPartyMessageFactory.staticSet_instance) {
            ThirdPartyMessageFactory.staticSet_instance = true;
            ThirdPartyMessageFactory.instance = new ThirdPartyMessageFactory();
        }
        return ThirdPartyMessageFactory.instance;
    }
    public string AUTHORIZED;
    public string NOT_AUTHORIZED;
    public string LINKAGE_ERROR;

    // Java field initializers run after the base constructor
    private void initFieldsThirdPartyMessageFactory() {
    this.AUTHORIZED = "Authorized";
    this.NOT_AUTHORIZED = "Not Authorized";
    this.LINKAGE_ERROR = "Linkage Error";
    }

    public ThirdPartyMessageFactory() {
        base();
        this.initFieldsThirdPartyMessageFactory();
    }
    

    public static ThirdPartyMessageFactory getInstance() {
        return ThirdPartyMessageFactory.staticGet_instance();
    }
}

