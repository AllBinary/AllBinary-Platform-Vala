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
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.logic.math.vector.AxisMathVectorUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.Angle
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonSeps

public class BasicVelocityProperties : JObject, BasicVelocityInterface {
    public LogUtil logUtil;
    public BasicDecimal velocityXBasicDecimal;
    public BasicDecimal velocityYBasicDecimal;
    public BasicDecimal velocityZBasicDecimal;
    private AxisMathVectorUtil axisMathVectorUtil;
    public DirectionUtil directionUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBasicVelocityProperties() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
    this.directionUtil = DirectionUtil.getInstance();
    }
    

    public BasicVelocityProperties() {
        base();
        this.initFieldsBasicVelocityProperties();
        this.velocityXBasicDecimal = new BasicDecimal(0);
        this.velocityYBasicDecimal = new BasicDecimal(0);
        this.velocityZBasicDecimal = new BasicDecimal(0);
    }
    

    public virtual void zero() {
        this.velocityXBasicDecimal.setint(0);
        this.velocityYBasicDecimal.setint(0);
        this.velocityZBasicDecimal.setint(0);
    }
    

    public virtual BasicDecimal getVelocityXBasicDecimalP() {
        return this.velocityXBasicDecimal;
    }
    

    public virtual BasicDecimal getVelocityYBasicDecimalP() {
        return this.velocityYBasicDecimal;
    }
    

    public virtual BasicDecimal getVelocityZBasicDecimalP() {
        return this.velocityZBasicDecimal;
    }
    

    public virtual void setVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection) {
        Angle angle = this.directionUtil.getAngle(direction);
        Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    public virtual void setVelocityWithDirection(int64 magnitude, Direction direction, Direction otherDirection) {
        Angle angle = this.directionUtil.getAngle(direction);
        Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    public virtual void addVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection) {
        Angle angle = this.directionUtil.getAngle(direction);
        Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    public virtual void addVelocityWithDirection(int64 magnitude, Direction direction, Direction otherDirection) {
        Angle angle = this.directionUtil.getAngle(direction);
        Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    public virtual void setVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle) {
        int64 magnitude = magnitudeBasicDecimal.getUnscaled();
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    public virtual void addVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle) {
        int64 magnitude = magnitudeBasicDecimal.getUnscaled();
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    public virtual void setVelocity(int64 magnitude, Angle angle, Angle otherAngle) {
        this.setVelocityi(magnitude, ((int32) (angle.getValue())), ((int32) (otherAngle.getValue())));
    }
    

    public virtual void addVelocity(int64 magnitude, Angle angle, Angle otherAngle) {
        this.addVelocityi(magnitude, ((int32) (angle.getValue())), ((int32) (otherAngle.getValue())));
    }
    

    public virtual void setVelocityi(int64 magnitude, int32 angle, int32 otherAngle) {
        int64 xVector = (this.axisMathVectorUtil.calculateX(magnitude, angle) / ((int64) (this.velocityXBasicDecimal.getScaledFactorValue())));
        int64 yVector = (this.axisMathVectorUtil.calculateY(magnitude, angle) / ((int64) (this.velocityYBasicDecimal.getScaledFactorValue())));
        int64 zVector = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / ((int64) (this.velocityZBasicDecimal.getScaledFactorValue())));
        this.velocityXBasicDecimal.setlong(xVector);
        this.velocityYBasicDecimal.setlong(yVector);
        this.velocityZBasicDecimal.setlong(zVector);
    }
    

    public virtual void addVelocityi(int64 magnitude, int32 angle, int32 otherAngle) {
        int64 xVector = (this.axisMathVectorUtil.calculateX(magnitude, angle) / ((int64) (this.velocityXBasicDecimal.getScaledFactorValue())));
        int64 yVector = (this.axisMathVectorUtil.calculateY(magnitude, angle) / ((int64) (this.velocityYBasicDecimal.getScaledFactorValue())));
        int64 zVector = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / ((int64) (this.velocityZBasicDecimal.getScaledFactorValue())));
        this.velocityXBasicDecimal.addlong(xVector);
        this.velocityYBasicDecimal.addlong(yVector);
        this.velocityZBasicDecimal.addlong(zVector);
    }
    

    public override string toString() {
        CommonSeps commonSeps = CommonSeps.getInstance();
        PositionStrings positionStrings = PositionStrings.getInstance();
        StringMaker stringBuffer = new StringMaker();
        StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append("Velocity ");
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityXBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityYBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityZBasicDecimal));
        return stringBuffer.toString();
    }
}

