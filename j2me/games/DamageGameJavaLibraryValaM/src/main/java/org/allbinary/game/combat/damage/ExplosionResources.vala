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
// package org.allbinary.game.combat.damage

public class ExplosionResources : JObject {
    private static ExplosionResources? instance;
    private static bool staticSet_instance = false;
    private static ExplosionResources staticGet_instance() {
        if (!ExplosionResources.staticSet_instance) {
            ExplosionResources.staticSet_instance = true;
            ExplosionResources.instance = new ExplosionResources();
        }
        return ExplosionResources.instance;
    }
    public string EXPLOSION_90_RESOURCE;
    public string EXPLOSION_60_RESOURCE;
    public string HALF_EXPLOSION_RESOURCE;
    public string THIRD_EXPLOSION_RESOURCE;

    // Java field initializers run after the base constructor
    private void initFieldsExplosionResources() {
    this.EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png";
    this.EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png";
    this.HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png";
    this.THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png";
    }
    

    public static ExplosionResources getInstance() {
        return ExplosionResources.staticGet_instance();
    }
    

    public ExplosionResources() {
        base();
        this.initFieldsExplosionResources();
    }
}

