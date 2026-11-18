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

public class SingletonAnimationInterfaceFactory : JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private Animation animationInterface;

    // Java field initializers run after the base constructor
    private void initFieldsSingletonAnimationInterfaceFactory() {
    
    }
    

    public SingletonAnimationInterfaceFactory(Animation animationInterface) {
        base();
        this.initFieldsSingletonAnimationInterfaceFactory();
        this.animationInterface = animationInterface;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return this.animationInterface;
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        return this.animationInterface;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

