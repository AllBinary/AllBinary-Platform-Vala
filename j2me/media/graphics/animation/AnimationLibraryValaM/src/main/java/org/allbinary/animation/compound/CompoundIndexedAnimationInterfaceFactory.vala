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
// import org.allbinary.logic.communication.log.ForcedLogUtil

public class CompoundIndexedAnimationInterfaceFactory : CompoundAnimationInterfaceFactory {
    

    public CompoundIndexedAnimationInterfaceFactory(AnimationInterfaceFactoryInterface[] basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory animationBehaviorFactory) {
        base(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory);
    }
    

    public override Animation[] createArray(int32 size) {
        return new Animation[size];
    }
    

    public override Animation createAnimation(Animation[] animationArray) {
        return new CompoundIndexedAnimation(animationArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
}

