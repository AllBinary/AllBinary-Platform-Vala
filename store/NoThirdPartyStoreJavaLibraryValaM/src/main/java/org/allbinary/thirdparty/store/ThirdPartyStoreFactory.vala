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

public class ThirdPartyStoreFactory : JObject {
    private static NoThirdPartyStore? instance;
    private static bool staticSet_instance = false;
    private static NoThirdPartyStore staticGet_instance() {
        if (!ThirdPartyStoreFactory.staticSet_instance) {
            ThirdPartyStoreFactory.staticSet_instance = true;
            ThirdPartyStoreFactory.instance = new NoThirdPartyStore();
        }
        return ThirdPartyStoreFactory.instance;
    }
    

    public static ThirdPartyStore getInstance() {
        return ThirdPartyStoreFactory.staticGet_instance();
    }
    

    public ThirdPartyStoreFactory() {
        base();
    }
}

