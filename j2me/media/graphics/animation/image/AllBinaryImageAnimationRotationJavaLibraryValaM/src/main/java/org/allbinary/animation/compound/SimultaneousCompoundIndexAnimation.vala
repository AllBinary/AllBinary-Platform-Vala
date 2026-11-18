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
// import org.allbinary.logic.math.PrimitiveIntUtil

public class SimultaneousCompoundIndexAnimation : IndexedAnimation {
    private IndexedAnimation[] animationInterfaceArray;

    // Java field initializers run after the base constructor
    private void initFieldsSimultaneousCompoundIndexAnimation() {
    
    }
    

    public SimultaneousCompoundIndexAnimation(IndexedAnimation[] animationInterfaceArray, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsSimultaneousCompoundIndexAnimation();
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
    

    public override void @set(GL gl) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].@set(gl);
        }
    }
    

    public virtual IndexedAnimation[] getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    public virtual void setAnimationInterfaceArray(IndexedAnimation[] animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
}

