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
// import org.allbinary.game.physics.velocity.BasicVelocityProperties
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.vector.AxisMathVectorUtil
// import org.allbinary.math.AngleFactory

public class ConstantVelocityNotifyViewChangeMovement : Movement {
    public BasicVelocityProperties basicVelocityProperties;
    private BasicDecimal speedBasicDecimal;
    private AxisMathVectorUtil axisMathVectorUtil;

    // Java field initializers run after the base constructor
    private void initFieldsConstantVelocityNotifyViewChangeMovement() {
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
    }
    

    public ConstantVelocityNotifyViewChangeMovement() {
        base();
        this.initFieldsConstantVelocityNotifyViewChangeMovement();
        this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL;
        this.basicVelocityProperties = new BasicVelocityProperties();
    }
    

    public override void init(BasicDecimal speedBasicDecimal, int32 angle, int32 otherAngle) {
        this.speedBasicDecimal = speedBasicDecimal;
        AngleFactory angleFactory = AngleFactory.getInstance();
        this.basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    public virtual void moveOutsideRadius(AllBinaryLayer layer, int64 radius, int32 angle, int32 otherAngle) {
        int32 scaleFactorValue = this.speedBasicDecimal.getScaledFactorValue();
        int32 xVector = ((int32) ((this.axisMathVectorUtil.calculateX(radius, angle) / ((int64) (scaleFactorValue)))));
        int32 yVector = ((int32) ((this.axisMathVectorUtil.calculateY(radius, angle) / ((int64) (scaleFactorValue)))));
        int32 zVector = ((int32) ((this.axisMathVectorUtil.calculateZ(radius, otherAngle) / ((int64) (scaleFactorValue)))));
        layer.moveDXYZ(xVector, yVector, zVector);
    }
    

    public override void process(AllBinaryGameLayer layer) {
        int32 x = this.basicVelocityProperties.getVelocityXBasicDecimalP().getScaled();
        int32 y = this.basicVelocityProperties.getVelocityYBasicDecimalP().getScaled();
        int32 z = this.basicVelocityProperties.getVelocityZBasicDecimalP().getScaled();
        layer.moveDXYZ(x, y, z);
        if (x != 0 || y != 0 || z != 0) {
            layer.onViewPositionChangeEvent();
        }
    }
    

    public override void stop() {
        this.basicVelocityProperties.zero();
    }
}

