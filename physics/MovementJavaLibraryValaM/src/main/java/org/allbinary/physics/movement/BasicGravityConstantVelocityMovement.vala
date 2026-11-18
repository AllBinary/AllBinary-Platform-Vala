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
// package org.allbinary.physics.movement
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.game.physics.acceleration.GravityUtil
// import org.allbinary.game.physics.velocity.VelocityProperties
// import org.allbinary.logic.math.BasicDecimal

public class BasicGravityConstantVelocityMovement : BasicConstantVelocityMovement {
    private GravityUtil gravityUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBasicGravityConstantVelocityMovement() {
    this.gravityUtil = GravityUtil.getInstance();
    }
    

    public BasicGravityConstantVelocityMovement(BasicDecimal speedBasicDecimal) {
        base(speedBasicDecimal, new VelocityProperties(((int32) (speedBasicDecimal.getUnscaled())), ((int32) (speedBasicDecimal.getUnscaled()))));
        this.initFieldsBasicGravityConstantVelocityMovement();
    }
    

    public override void process(AllBinaryGameLayer layer) {
        base.process(layer);
        this.gravityUtil.process(this.getVelocityProperties(), this.gravityUtil.GAME_GRAVITY_VELOCITY);
    }
}

