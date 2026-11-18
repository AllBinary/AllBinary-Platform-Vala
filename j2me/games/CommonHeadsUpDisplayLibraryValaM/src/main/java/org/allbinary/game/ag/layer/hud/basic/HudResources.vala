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
// package org.allbinary.game.ag.layer.hud.basic

public class HudResources : JObject {
    private static HudResources? instance;
    private static bool staticSet_instance = false;
    private static HudResources staticGet_instance() {
        if (!HudResources.staticSet_instance) {
            HudResources.staticSet_instance = true;
            HudResources.instance = new HudResources();
        }
        return HudResources.instance;
    }
    public string RESOURCE_LIFE;
    public string RESOURCE_HEALTH;

    // Java field initializers run after the base constructor
    private void initFieldsHudResources() {
    this.RESOURCE_LIFE = "/hud_life_10_by_10.png";
    this.RESOURCE_HEALTH = "/hud_health_10_by_10.png";
    }
    

    public static HudResources getInstance() {
        return HudResources.staticGet_instance();
    }
    

    public HudResources() {
        base();
        this.initFieldsHudResources();
    }
}

