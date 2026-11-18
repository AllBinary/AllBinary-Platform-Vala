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
// package org.allbinary.game.ag.layer.pickup.life

public class LifeResources : JObject {
    private static LifeResources? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static LifeResources staticGet_SINGLETON() {
        if (!LifeResources.staticSet_SINGLETON) {
            LifeResources.staticSet_SINGLETON = true;
            LifeResources.SINGLETON = new LifeResources();
        }
        return LifeResources.SINGLETON;
    }
    public string RESOURCE;

    // Java field initializers run after the base constructor
    private void initFieldsLifeResources() {
    this.RESOURCE = "life_drop_20_by_20.png";
    }
    

    public LifeResources() {
        base();
        this.initFieldsLifeResources();
    }
    

    public static LifeResources getInstance() {
        return LifeResources.staticGet_SINGLETON();
    }
}

