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

public class IndexedAnimationBehavior : AnimationBehavior {
    public int64 frameDelayTime;
    public int32 loopTotal;
    public int64 elapsedTime;
    public int32 loopIndex;

    // Java field initializers run after the base constructor
    private void initFieldsIndexedAnimationBehavior() {
    
    
    this.elapsedTime = 0;
    this.loopIndex = 0;
    }
    

    public IndexedAnimationBehavior(int32 loopTotal, int64 frameDelayTime) {
        base();
        this.initFieldsIndexedAnimationBehavior();
        this.loopTotal = loopTotal;
        this.frameDelayTime = frameDelayTime;
    }
    

    public override void reset() {
        this.loopIndex = 0;
    }
}

