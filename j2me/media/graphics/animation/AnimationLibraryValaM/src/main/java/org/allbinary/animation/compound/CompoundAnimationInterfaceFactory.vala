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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties

public class CompoundAnimationInterfaceFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    public AnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArrayP;
    public AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    private void initFieldsCompoundAnimationInterfaceFactory() {
    
    
    }
    

    public CompoundAnimationInterfaceFactory(AnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsCompoundAnimationInterfaceFactory();
        this.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        int32 size = this.basicAnimationInterfaceFactoryInterfaceArrayP.length;
        Animation[] animationInterfaceArray = this.createArray(size);
        for (int32 index = 0; index < size; index++) {
            animationInterfaceArray[index] = this.basicAnimationInterfaceFactoryInterfaceArrayP[index].getInstance1(instanceId);
        }
        return this.createAnimation(animationInterfaceArray);
    }
    

    public virtual Animation[] createArray(int32 size) {
        return NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY;
    }
    

    public virtual Animation createAnimation(Animation[] animationInterfaceArray) {
        return NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    public virtual AnimationInterfaceFactoryInterface[] getBasicAnimationInterfaceFactoryInterfaceArray() {
        return this.basicAnimationInterfaceFactoryInterfaceArrayP;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
        int32 size = this.basicAnimationInterfaceFactoryInterfaceArrayP.length;
        for (int32 index = 0; index < size; index++) {
            this.basicAnimationInterfaceFactoryInterfaceArrayP[index].setInitialScale(scaleProperties);
        }
    }
}

