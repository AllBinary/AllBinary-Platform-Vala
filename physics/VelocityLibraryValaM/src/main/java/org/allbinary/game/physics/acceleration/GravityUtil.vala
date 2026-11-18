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
// package org.allbinary.game.physics.acceleration
// import org.allbinary.game.physics.velocity.BasicVelocityProperties

public class GravityUtil : JObject {
    private static GravityUtil? instance;
    private static bool staticSet_instance = false;
    private static GravityUtil staticGet_instance() {
        if (!GravityUtil.staticSet_instance) {
            GravityUtil.staticSet_instance = true;
            GravityUtil.instance = new GravityUtil();
        }
        return GravityUtil.instance;
    }
    public int32 GAME_GRAVITY_VELOCITY;
    public int32 MAX_GAME_VELOCITY;

    // Java field initializers run after the base constructor
    private void initFieldsGravityUtil() {
    this.GAME_GRAVITY_VELOCITY = 1800;
    this.MAX_GAME_VELOCITY = 18000;
    }

    public GravityUtil() {
        base();
        this.initFieldsGravityUtil();
    }
    

    public static GravityUtil getInstance() {
        return GravityUtil.staticGet_instance();
    }
    

    public virtual void process(BasicVelocityProperties velocityProperties, int32 customGravity) {
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity);
    }
}

