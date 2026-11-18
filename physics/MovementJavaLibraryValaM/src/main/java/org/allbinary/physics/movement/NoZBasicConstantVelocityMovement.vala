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
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.vector.AxisMathVectorUtil
// import org.allbinary.math.AngleFactory

public class NoZBasicConstantVelocityMovement : Movement, VelocityInterfaceCompositeInterface {
    private BasicVelocityProperties velocityProperties;
    private BasicDecimal speedBasicDecimal;
    private AxisMathVectorUtil axisMathVectorUtil;

    // Java field initializers run after the base constructor
    private void initFieldsNoZBasicConstantVelocityMovement() {
    
    this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL;
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
    }
    

    public NoZBasicConstantVelocityMovement(BasicDecimal basicDecimal, BasicVelocityProperties velocityProperties) {
        base();
        this.initFieldsNoZBasicConstantVelocityMovement();
        this.setSpeedBasicDecimal(basicDecimal);
        this.velocityProperties = velocityProperties;
    }
    

    public override void init(BasicDecimal speedBasicDecimal, int32 angle, int32 otherAngle) {
        this.speedBasicDecimal = speedBasicDecimal;
        AngleFactory angleFactory = AngleFactory.getInstance();
        this.velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    public virtual void moveOutsideRadius(AllBinaryLayer layer, int64 radius, int32 angle, int32 otherAngle) {
        int32 scaleFactorValue = this.speedBasicDecimal.getScaledFactorValue();
        int32 xVector = ((int32) ((this.axisMathVectorUtil.calculateX(radius, angle) / ((int64) (scaleFactorValue)))));
        int32 yVector = ((int32) ((this.axisMathVectorUtil.calculateY(radius, angle) / ((int64) (scaleFactorValue)))));
        layer.moveDXYZ(xVector, yVector, 0);
    }
    

    public override void process(AllBinaryGameLayer layer) {
        layer.moveDXYZ(this.velocityProperties.getVelocityXBasicDecimalP().getScaled(), this.velocityProperties.getVelocityYBasicDecimalP().getScaled(), 0);
    }
    

    public override string toString() {
        return this.velocityProperties.toString();
    }
    

    public override void stop() {
        this.velocityProperties.zero();
    }
    

    public virtual BasicVelocityProperties getVelocityProperties() {
        return this.velocityProperties;
    }
    

    public virtual void setVelocityProperties(BasicVelocityProperties velocityProperties) {
        this.velocityProperties = velocityProperties;
    }
    

    public virtual void setSpeedBasicDecimal(BasicDecimal speedBasicDecimal) {
        this.speedBasicDecimal = speedBasicDecimal;
    }
    

    public virtual BasicDecimal getSpeedBasicDecimal() {
        return this.speedBasicDecimal;
    }
}

