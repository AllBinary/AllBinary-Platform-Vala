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

public class CustomGravityConstantVelocityMovement : BasicConstantVelocityMovement {
    private int32 customGravity;
    private GravityUtil gravityUtil;

    // Java field initializers run after the base constructor
    private void initFieldsCustomGravityConstantVelocityMovement() {
    
    this.gravityUtil = GravityUtil.getInstance();
    }
    

    public CustomGravityConstantVelocityMovement(BasicDecimal speedBasicDecimal, int32 customGravity) {
        base(speedBasicDecimal, new VelocityProperties(((int32) (speedBasicDecimal.getUnscaled())), ((int32) (speedBasicDecimal.getUnscaled()))));
        this.initFieldsCustomGravityConstantVelocityMovement();
        this.customGravity = customGravity;
    }
    

    public override void process(AllBinaryGameLayer layer) {
        base.process(layer);
        this.gravityUtil.process(this.getVelocityProperties(), this.customGravity);
        VelocityProperties velocityProperties = ((VelocityProperties) this.getVelocityProperties());
        velocityProperties.limitMaxYForwardVelocity();
    }
}

