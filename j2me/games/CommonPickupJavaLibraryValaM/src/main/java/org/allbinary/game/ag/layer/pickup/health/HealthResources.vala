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
// package org.allbinary.game.ag.layer.pickup.health

public class HealthResources : JObject {
    private static HealthResources? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static HealthResources staticGet_SINGLETON() {
        if (!HealthResources.staticSet_SINGLETON) {
            HealthResources.staticSet_SINGLETON = true;
            HealthResources.SINGLETON = new HealthResources();
        }
        return HealthResources.SINGLETON;
    }
    public string RESOURCE;

    // Java field initializers run after the base constructor
    private void initFieldsHealthResources() {
    this.RESOURCE = "health_drop_20_by_20.png";
    }
    

    public HealthResources() {
        base();
        this.initFieldsHealthResources();
    }
    

    public static HealthResources getInstance() {
        return HealthResources.staticGet_SINGLETON();
    }
}

