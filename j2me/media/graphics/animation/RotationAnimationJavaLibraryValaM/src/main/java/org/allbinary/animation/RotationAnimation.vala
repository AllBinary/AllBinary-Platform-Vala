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
// package org.allbinary.animation
// import org.allbinary.direction.Direction
// import org.allbinary.direction.DirectionUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleInfo
// import org.allbinary.math.FrameUtil
// import org.allbinary.util.CircularIndexUtil

public class RotationAnimation : IndexedAnimation, RotationAnimationInterface, IndexedAnimationInterface, DirectionalInterface, SequentialAnimationInterface, AnimationInterface, SequenceInterface, LocationPaintableInterface {
    public FrameUtil frameUtil;
    public DirectionUtil directionUtil;
    public AngleInfo angleInfo;
    public CircularIndexUtil circularIndexUtil;

    // Java field initializers run after the base constructor
    private void initFieldsRotationAnimation() {
    this.frameUtil = FrameUtil.getInstance();
    this.directionUtil = DirectionUtil.getInstance();
    
    
    }
    

    public RotationAnimation(AngleInfo angleInfo, CircularIndexUtil circularIndexUtil, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsRotationAnimation();
        this.angleInfo = angleInfo;
        this.circularIndexUtil = circularIndexUtil;
    }
    

    public virtual void nextRotationX() {
    }
    

    public virtual void previousRotationX() {
    }
    

    public virtual void nextRotation() {
        this.angleInfo.adjustAngle(this.circularIndexUtil.next());
    }
    

    public virtual void previousRotation() {
        this.angleInfo.adjustAngle(this.circularIndexUtil.previous());
    }
    

    public virtual void nextRotationZ() {
    }
    

    public virtual void previousRotationZ() {
    }
    

    public override void setFrame(int32 index) {
        this.circularIndexUtil.setIndex(index);
        int32 newFrame = this.circularIndexUtil.getIndex();
        this.angleInfo.adjustAngle(newFrame);
    }
    

    public virtual void setFrameByDirection(Direction direction) {
        Angle angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    public virtual void setFrameToAngle(Angle angle) {
        this.adjustFrameToAngle(angle);
    }
    

    public virtual void adjustFrameToAngle(Angle angle) {
        this.adjustFrame(angle.getValue());
    }
    

    public virtual void adjustFrame(int16 angle) {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, ((int32) (this.angleInfo.getAngleIncrementInfo().getAngleIncrement()))));
    }
    

    public override int32 getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    public override int32 getSize() {
        return this.circularIndexUtil.getSize();
    }
    

    public virtual AngleInfo getAngleInfoP() {
        return this.angleInfo;
    }
    

    public override string toString() {
        return new StringMaker().append(base.toString()).append("circularIndexUtil: ").append(this.circularIndexUtil.toString()).append("angleInfo: ").append(this.angleInfo.toString()).toString();
    }
}

