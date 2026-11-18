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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.util.CircularIndexUtil

public class CompoundIndexedAnimation : IndexedAnimation, CompoundAnimationInterface, AnimationInterface, LocationPaintableInterface {
    private CircularIndexUtil circularIndexUtil;
    private Animation[] animationInterfaceArray;

    // Java field initializers run after the base constructor
    private void initFieldsCompoundIndexedAnimation() {
    
    
    }
    

    public CompoundIndexedAnimation(Animation[] animationInterfaceArray, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsCompoundIndexedAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
    }
    

    public override void setFrame(int32 index) {
        IndexedAnimation indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[this.circularIndexUtil.getIndex()]);
        indexedAnimation.setFrame(index);
    }
    

    public override int32 getFrame() {
        IndexedAnimation indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[this.circularIndexUtil.getIndex()]);
        return indexedAnimation.getFrame();
    }
    

    public override int32 getSize() {
        IndexedAnimation indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[this.circularIndexUtil.getIndex()]);
        return indexedAnimation.getSize();
    }
    

    public override void previousFrame() {
        IndexedAnimation indexedAnimation = ((IndexedAnimation) this.animationInterfaceArray[this.circularIndexUtil.getIndex()]);
        indexedAnimation.previousFrame();
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void nextFrame() {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y);
    }
    

    public override void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z);
    }
    

    public virtual IndexedAnimation getCurrentAnimation() {
        return ((IndexedAnimation) this.animationInterfaceArray[this.circularIndexUtil.getIndex()]);
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
    

    public virtual Animation[] getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    public virtual void setAnimationInterfaceArray(Animation[] animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    public override void @set(GL gl) {
        for (int32 index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].@set(gl);
        }
    }
}

