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
// package org.allbinary.animation.special
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.IndexedAnimationBehavior

public class SpecialAnimation : IndexedAnimation, SpecialAnimationInterface, IndexedAnimationInterface, SequentialAnimationInterface, AnimationInterface, SequenceInterface, LocationPaintableInterface {
    private static SpecialAnimation? NULL_SPECIAL_ANIMATION;
    private static bool staticSet_NULL_SPECIAL_ANIMATION = false;
    private static SpecialAnimation staticGet_NULL_SPECIAL_ANIMATION() {
        if (!SpecialAnimation.staticSet_NULL_SPECIAL_ANIMATION) {
            SpecialAnimation.staticSet_NULL_SPECIAL_ANIMATION = true;
            SpecialAnimation.NULL_SPECIAL_ANIMATION = new SpecialAnimation(new IndexedAnimationBehavior(1, 250));
        }
        return SpecialAnimation.NULL_SPECIAL_ANIMATION;
    }
    

    public static SpecialAnimation getInstance() {
        return SpecialAnimation.staticGet_NULL_SPECIAL_ANIMATION();
    }
    

    public SpecialAnimation(AnimationBehavior animationBehavior) {
        base(animationBehavior);
    }
    

    public override void nextFrame() {
        IndexedAnimationBehavior indexedAnimationBehavior = (((IndexedAnimationBehavior) this.animationBehaviorP));
        indexedAnimationBehavior.loopIndex++;
    }
    

    public virtual void setLastFrame() {
    }
    

    public virtual bool isComplete() {
        return false;
    }
    

    public virtual void open() {
    }
    

    public virtual void close() {
    }
    

    public virtual void process() {
    }
}

