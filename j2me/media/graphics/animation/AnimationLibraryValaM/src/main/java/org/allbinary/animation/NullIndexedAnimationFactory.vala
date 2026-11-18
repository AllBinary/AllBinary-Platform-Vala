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

public class NullIndexedAnimationFactory : JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    public static IndexedAnimation[]? NULL_INDEXED_ANIMATION_ARRAY;
    private static bool staticSet_NULL_INDEXED_ANIMATION_ARRAY = false;
    public static IndexedAnimation[] staticGet_NULL_INDEXED_ANIMATION_ARRAY() {
        if (!NullIndexedAnimationFactory.staticSet_NULL_INDEXED_ANIMATION_ARRAY) {
            NullIndexedAnimationFactory.staticSet_NULL_INDEXED_ANIMATION_ARRAY = true;
            NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_ARRAY = new IndexedAnimation[0];
        }
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_ARRAY;
    }
    private static NullIndexedAnimationFactory? NULL_INDEXED_ANIMATION_FACTORY;
    private static bool staticSet_NULL_INDEXED_ANIMATION_FACTORY = false;
    private static NullIndexedAnimationFactory staticGet_NULL_INDEXED_ANIMATION_FACTORY() {
        if (!NullIndexedAnimationFactory.staticSet_NULL_INDEXED_ANIMATION_FACTORY) {
            NullIndexedAnimationFactory.staticSet_NULL_INDEXED_ANIMATION_FACTORY = true;
            NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY = new NullIndexedAnimationFactory();
        }
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY;
    }
    private Animation NULL_ANIMATION;

    // Java field initializers run after the base constructor
    private void initFieldsNullIndexedAnimationFactory() {
    this.NULL_ANIMATION = new NullIndexedAnimationInner();
    }
    

    public NullIndexedAnimationFactory() {
        base();
        this.initFieldsNullIndexedAnimationFactory();
    }
    

    public static NullIndexedAnimationFactory getFactoryInstance() {
        return NullIndexedAnimationFactory.staticGet_NULL_INDEXED_ANIMATION_FACTORY();
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

