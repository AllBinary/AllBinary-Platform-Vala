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
// package org.allbinary.game.physics.velocity
// import org.allbinary.logic.math.BasicDecimal

public class DragVelocityBehavior : VelocityBehaviorBase {
    public static DragVelocityBehavior? instance;
    private static bool staticSet_instance = false;
    public static DragVelocityBehavior staticGet_instance() {
        if (!DragVelocityBehavior.staticSet_instance) {
            DragVelocityBehavior.staticSet_instance = true;
            DragVelocityBehavior.instance = new DragVelocityBehavior();
        }
        return DragVelocityBehavior.instance;
    }

    public DragVelocityBehavior() {
        base();
    }
    

    public override void reduce(BasicVelocityProperties velocityProperties, int32 nominator, int32 denominator) {
        if (velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != (int64) 0) {
            BasicDecimal basicDecimal = velocityProperties.getVelocityXBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != (int64) 0) {
            BasicDecimal basicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    public override void reduceX(BasicVelocityProperties velocityProperties, int32 nominator, int32 denominator) {
        BasicDecimal basicDecimal = velocityProperties.getVelocityXBasicDecimalP();
        if (basicDecimal.getUnscaled() != (int64) 0) {
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    public override void reduceY(BasicVelocityProperties velocityProperties, int32 nominator, int32 denominator) {
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != (int64) 0) {
            BasicDecimal basicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
}

