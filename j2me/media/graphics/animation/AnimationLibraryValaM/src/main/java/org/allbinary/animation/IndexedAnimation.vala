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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.string.CommonStrings

public class IndexedAnimation : Animation, IndexedAnimationInterface, SequentialAnimationInterface, AnimationInterface, SequenceInterface, LocationPaintableInterface {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public AnimationBehavior animationBehaviorP;

    // Java field initializers run after the base constructor
    private void initFieldsIndexedAnimation() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    }
    

    public IndexedAnimation(AnimationBehavior animationBehavior) {
        base();
        this.initFieldsIndexedAnimation();
        this.animationBehaviorP = animationBehavior;
    }
    

    public virtual AnimationBehavior getAnimationBehavior() {
        return this.animationBehaviorP;
    }
    

    public virtual void reset() {
        this.animationBehaviorP.reset();
        this.setFrame(0);
    }
    

    public virtual void setFrame(int32 index) {
    }
    

    public virtual int32 getFrame() {
        return 0;
    }
    

    public virtual int32 getAnimationSize() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual int32 getSize() {
        return 0;
    }
    

    public virtual void previousFrame() {
    }
    

    public virtual bool isLastFrame() {
        if (this.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void setSequence(int32[] sequence) {
    }
    

    public virtual int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public virtual void setState(IndexedAnimation indexedAnimation) {
        this.setFrame(indexedAnimation.getFrame());
        this.setDx(indexedAnimation.getDx());
        this.setDy(indexedAnimation.getDy());
    }
    

    public virtual int32 getWidth() {
        return 0;
    }
    

    public virtual int32 getHeight() {
        return 0;
    }
}

