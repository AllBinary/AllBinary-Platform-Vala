/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

public class IndexedAnimationBehaviorFactory : AnimationBehaviorFactory {
    public int64 frameDelayTime;
    public int32 loopTotal;

    // Java field initializers run after the base constructor
    private void initFieldsIndexedAnimationBehaviorFactory() {
    
    
    }
    

    public IndexedAnimationBehaviorFactory(int32 loopTotal, int64 frameDelayTime) {
        base();
        this.initFieldsIndexedAnimationBehaviorFactory();
        this.loopTotal = loopTotal;
        this.frameDelayTime = frameDelayTime;
    }
    

    public override AnimationBehavior getOrCreateInstance() {
        return new IndexedAnimationBehavior(this.loopTotal, this.frameDelayTime);
    }
}

