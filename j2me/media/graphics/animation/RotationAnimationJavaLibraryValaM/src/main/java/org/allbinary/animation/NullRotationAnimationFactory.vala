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
// import org.allbinary.media.ScaleProperties

public class NullRotationAnimationFactory : JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private static NullRotationAnimationFactory? NULL_ROTATION_ANIMATION_FACTORY;
    private static bool staticSet_NULL_ROTATION_ANIMATION_FACTORY = false;
    private static NullRotationAnimationFactory staticGet_NULL_ROTATION_ANIMATION_FACTORY() {
        if (!NullRotationAnimationFactory.staticSet_NULL_ROTATION_ANIMATION_FACTORY) {
            NullRotationAnimationFactory.staticSet_NULL_ROTATION_ANIMATION_FACTORY = true;
            NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY = new NullRotationAnimationFactory();
        }
        return NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY;
    }
    public RotationAnimation[] NULL_ROTATION_ANIMATION_ARRAY;
    private Animation NULL_ANIMATION;

    // Java field initializers run after the base constructor
    private void initFieldsNullRotationAnimationFactory() {
    this.NULL_ROTATION_ANIMATION_ARRAY = new RotationAnimation[0];
    this.NULL_ANIMATION = new NullRotationAnimation2();
    }
    

    public NullRotationAnimationFactory() {
        base();
        this.initFieldsNullRotationAnimationFactory();
    }
    

    public static NullRotationAnimationFactory getFactoryInstance() {
        return NullRotationAnimationFactory.staticGet_NULL_ROTATION_ANIMATION_FACTORY();
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return this.NULL_ANIMATION;
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        return this.NULL_ANIMATION;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

