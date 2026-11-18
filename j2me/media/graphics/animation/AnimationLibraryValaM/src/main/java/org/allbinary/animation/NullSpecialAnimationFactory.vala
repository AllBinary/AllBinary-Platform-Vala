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
// import org.allbinary.animation.special.SpecialAnimation
// import org.allbinary.media.ScaleProperties

public class NullSpecialAnimationFactory : JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private static NullSpecialAnimationFactory? NULL_SPECIAL_ANIMATION_FACTORY;
    private static bool staticSet_NULL_SPECIAL_ANIMATION_FACTORY = false;
    private static NullSpecialAnimationFactory staticGet_NULL_SPECIAL_ANIMATION_FACTORY() {
        if (!NullSpecialAnimationFactory.staticSet_NULL_SPECIAL_ANIMATION_FACTORY) {
            NullSpecialAnimationFactory.staticSet_NULL_SPECIAL_ANIMATION_FACTORY = true;
            NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY = new NullSpecialAnimationFactory();
        }
        return NullSpecialAnimationFactory.NULL_SPECIAL_ANIMATION_FACTORY;
    }
    

    public NullSpecialAnimationFactory() {
        base();
    }
    

    public static NullSpecialAnimationFactory getFactoryInstance() {
        return NullSpecialAnimationFactory.staticGet_NULL_SPECIAL_ANIMATION_FACTORY();
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return SpecialAnimation.getInstance();
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        return SpecialAnimation.getInstance();
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

