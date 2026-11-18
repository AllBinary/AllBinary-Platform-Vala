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
// package org.allbinary.animation.compound
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.direction.Direction
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

public class AutoCompoundRotationAnimation : RotationAnimation, CompoundAnimationInterface, AnimationInterface, LocationPaintableInterface {
    private RotationAnimation[] animationInterfaceArray;

    // Java field initializers run after the base constructor
    private void initFieldsAutoCompoundRotationAnimation() {
    
    }
    

    public AutoCompoundRotationAnimation(RotationAnimation[] animationInterfaceArray, AnimationBehavior animationBehavior) {
        base(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior);
        this.initFieldsAutoCompoundRotationAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
    }
    

    public override void setFrame(int32 index) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrame(index);
    }
    

    public override int32 getFrame() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getFrame();
    }
    

    public override int32 getAnimationSize() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAnimationSize();
    }
    

    public override int32 getSize() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getSize();
    }
    

    public override void previousFrame() {
        this.circularIndexUtil.previous();
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousFrame();
    }
    

    public override void nextFrame() {
        this.circularIndexUtil.next();
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame();
    }
    

    public override void previousRotation() {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousRotation();
    }
    

    public override void nextRotation() {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextRotation();
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y);
    }
    

    public override void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z);
    }
    

    public virtual IndexedAnimation getCurrentAnimation() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()];
    }
    

    public virtual void nextAnimation() {
        int32 frame = this.getFrame();
        this.circularIndexUtil.next();
        this.setFrame(frame);
    }
    

    public virtual void previousAnimation() {
        int32 frame = this.getFrame();
        this.circularIndexUtil.previous();
        this.setFrame(frame);
    }
    

    public virtual void setAnimation(int32 index) {
        int32 frame = this.getFrame();
        this.circularIndexUtil.setIndex(index);
        this.setFrame(frame);
    }
    

    public override void setFrameByDirection(Direction direction) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameByDirection(direction);
    }
    

    public override void setFrameToAngle(Angle angle) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameToAngle(angle);
    }
    

    public override void adjustFrameToAngle(Angle newAngle) {
        this.adjustFrame(newAngle.getValue());
    }
    

    public override void adjustFrame(int16 angle) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].adjustFrame(angle);
    }
    

    public override AngleInfo getAngleInfoP() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAngleInfoP();
    }
    

    public virtual RotationAnimation[] getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    public virtual void setAnimationInterfaceArray(RotationAnimation[] animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    public override void @set(GL gl) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].@set(gl);
        }
    }
}

