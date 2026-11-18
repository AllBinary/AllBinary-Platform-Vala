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
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties

public class SimultaneousCompoundIndexAnimationInterfaceFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private AnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArray;
    private AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    private void initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory() {
    
    
    }
    

    public SimultaneousCompoundIndexAnimationInterfaceFactory(AnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory();
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        int32 size = this.basicAnimationInterfaceFactoryInterfaceArray.length;
        IndexedAnimation[] animationInterfaceArray = new IndexedAnimation[size];
        for (int32 index = 0; index < size; index++) {
            animationInterfaceArray[index] = ((IndexedAnimation) this.basicAnimationInterfaceFactoryInterfaceArray[index].getInstance1(instanceId));
        }
        return this.getOrCreate(animationInterfaceArray);
    }
    

    public virtual Animation getOrCreate(IndexedAnimation[] animationInterfaceArray) {
        return new SimultaneousCompoundIndexAnimation(animationInterfaceArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public virtual AnimationInterfaceFactoryInterface[] getBasicAnimationInterfaceFactoryInterfaceArray() {
        return this.basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

