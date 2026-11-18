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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.media.ScaleProperties

public class NullAnimationFactory : JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    public static NullAnimationFactory? NULL_NOT_FOR_USE_ANIMATION_FACTORY;
    private static bool staticSet_NULL_NOT_FOR_USE_ANIMATION_FACTORY = false;
    public static NullAnimationFactory staticGet_NULL_NOT_FOR_USE_ANIMATION_FACTORY() {
        if (!NullAnimationFactory.staticSet_NULL_NOT_FOR_USE_ANIMATION_FACTORY) {
            NullAnimationFactory.staticSet_NULL_NOT_FOR_USE_ANIMATION_FACTORY = true;
            NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY = new NullAnimationFactory();
        }
        return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY;
    }
    private static NullAnimationFactory? NULL_ANIMATION_FACTORY;
    private static bool staticSet_NULL_ANIMATION_FACTORY = false;
    private static NullAnimationFactory staticGet_NULL_ANIMATION_FACTORY() {
        if (!NullAnimationFactory.staticSet_NULL_ANIMATION_FACTORY) {
            NullAnimationFactory.staticSet_NULL_ANIMATION_FACTORY = true;
            NullAnimationFactory.NULL_ANIMATION_FACTORY = new NullAnimationFactory();
        }
        return NullAnimationFactory.NULL_ANIMATION_FACTORY;
    }
    private Animation NULL_ANIMATION;
    public Animation[] EMPTY_ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsNullAnimationFactory() {
    this.NULL_ANIMATION = new Animation() /* Java anonymous class body: implement it as a named subclass
        

        public virtual void paintXY(Graphics graphics, int32 x, int32 y) {
        } */;
    this.EMPTY_ARRAY = new Animation[0];
    }
    

    public NullAnimationFactory() {
        base();
        this.initFieldsNullAnimationFactory();
    }
    

    public static NullAnimationFactory getFactoryInstance() {
        return NullAnimationFactory.staticGet_NULL_ANIMATION_FACTORY();
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

