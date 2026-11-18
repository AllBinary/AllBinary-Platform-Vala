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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.logic.math.PrimitiveIntUtil

public class SimultaneousCompoundIndexedAnimation : IndexedAnimation {
    private Animation[] animationInterfaceArray;

    // Java field initializers run after the base constructor
    private void initFieldsSimultaneousCompoundIndexedAnimation() {
    
    }
    

    public SimultaneousCompoundIndexedAnimation(Animation[] animationInterfaceArray, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsSimultaneousCompoundIndexedAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    public override void setFrame(int32 frameIndex) {
        IndexedAnimation indexedAnimation = null;
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[index]);
            indexedAnimation.setFrame(frameIndex);
        }
    }
    

    public override int32 getFrame() {
        IndexedAnimation indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[0]);
        return indexedAnimation.getFrame();
    }
    

    public override int32 getSize() {
        IndexedAnimation indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[0]);
        return indexedAnimation.getSize();
    }
    

    public override void previousFrame() {
        IndexedAnimation indexedAnimation = null;
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[index]);
            indexedAnimation.previousFrame();
        }
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void nextFrame() {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].nextFrame();
        }
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        int32 size = this.animationInterfaceArray.length;
        for (int32 index = 0; index < size; index++) {
            this.animationInterfaceArray[index].paintXY(graphics, x, y);
        }
    }
    

    public override void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
        int32 size = this.animationInterfaceArray.length;
        for (int32 index = 0; index < size; index++) {
            this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    public virtual Animation[] getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    public virtual void setAnimationInterfaceArray(Animation[] animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
}

