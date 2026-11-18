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
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.direction.Direction
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

public class SimultaneousCompoundRotationAnimation : RotationAnimation {
    private RotationAnimation[] animationInterfaceArray;

    // Java field initializers run after the base constructor
    private void initFieldsSimultaneousCompoundRotationAnimation() {
    
    }
    

    public SimultaneousCompoundRotationAnimation(RotationAnimation[] animationInterfaceArray, AnimationBehavior animationBehavior) {
        base(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior);
        this.initFieldsSimultaneousCompoundRotationAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    public override void setFrame(int32 frameIndex) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].setFrame(frameIndex);
        }
    }
    

    public override int32 getFrame() {
        return this.animationInterfaceArray[0].getFrame();
    }
    

    public override int32 getAnimationSize() {
        return this.animationInterfaceArray[0].getAnimationSize();
    }
    

    public override int32 getSize() {
        return this.animationInterfaceArray[0].getSize();
    }
    

    public override void previousFrame() {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].previousFrame();
        }
    }
    

    public override void nextFrame() {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].nextFrame();
        }
    }
    

    public override void previousRotation() {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].previousRotation();
        }
    }
    

    public override void nextRotation() {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].nextRotation();
        }
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].paintXY(graphics, x, y);
        }
    }
    

    public override void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    public override void setFrameByDirection(Direction direction) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].setFrameByDirection(direction);
        }
    }
    

    public override void setFrameToAngle(Angle angle) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].setFrameToAngle(angle);
        }
    }
    

    public override void adjustFrameToAngle(Angle newAngle) {
        this.adjustFrame(newAngle.getValue());
    }
    

    public override void adjustFrame(int16 angle) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].adjustFrame(angle);
        }
    }
    

    public override AngleInfo getAngleInfoP() {
        return this.animationInterfaceArray[0].getAngleInfoP();
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

