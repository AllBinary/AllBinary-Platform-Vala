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
// import org.allbinary.game.physics.velocity.VelocityProperties
// import org.allbinary.logic.math.BasicDecimal

public class OscillateVelocityMovement : BasicConstantVelocityMovement {
    private int32 oscillateMin;
    private int32 oscillateMax;
    private int32 oscillate;
    private bool oscillatePositive;

    // Java field initializers run after the base constructor
    private void initFieldsOscillateVelocityMovement() {
    
    
    this.oscillate = 0;
    this.oscillatePositive = false;
    }
    

    public OscillateVelocityMovement(BasicDecimal speedBasicDecimal, int32 oscillateMin, int32 oscillateMax) {
        base(speedBasicDecimal, new VelocityProperties(((int32) (speedBasicDecimal.getUnscaled())), ((int32) (speedBasicDecimal.getUnscaled()))));
        this.initFieldsOscillateVelocityMovement();
        this.oscillateMin = oscillateMin;
        this.oscillateMax = oscillateMax;
    }
    

    public override void process(AllBinaryGameLayer layer) {
        base.process(layer);
        if (this.oscillate < this.oscillateMin) {
            this.oscillatePositive = true;
        } else if (this.oscillate > this.oscillateMax) {
            this.oscillatePositive = false;
        }
        if (this.oscillatePositive) {
            this.oscillate++;
            this.getVelocityProperties().getVelocityXBasicDecimalP().addint(2000);
        } else {
            this.oscillate--;
            this.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(2000);
        }
    }
}

