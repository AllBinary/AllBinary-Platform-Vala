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

public class LockedResources : JObject {
    private static LockedResources? instance;
    private static bool staticSet_instance = false;
    private static LockedResources staticGet_instance() {
        if (!LockedResources.staticSet_instance) {
            LockedResources.staticSet_instance = true;
            LockedResources.instance = new LockedResources();
        }
        return LockedResources.instance;
    }
    public string LOCKED_DEMO_GAME_FEATURE_RESOURCE;

    // Java field initializers run after the base constructor
    private void initFieldsLockedResources() {
    this.LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png";
    }

    public LockedResources() {
        base();
        this.initFieldsLockedResources();
    }
    

    public static LockedResources getInstance() {
        return LockedResources.staticGet_instance();
    }
}

