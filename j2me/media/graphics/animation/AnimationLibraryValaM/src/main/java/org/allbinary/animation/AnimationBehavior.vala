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

public class AnimationBehavior : JObject {
    private static AnimationBehavior? instance;
    private static bool staticSet_instance = false;
    private static AnimationBehavior staticGet_instance() {
        if (!AnimationBehavior.staticSet_instance) {
            AnimationBehavior.staticSet_instance = true;
            AnimationBehavior.instance = new AnimationBehavior();
        }
        return AnimationBehavior.instance;
    }

    public AnimationBehavior() {
        base();
    }
    

    public static AnimationBehavior getInstance() {
        return AnimationBehavior.staticGet_instance();
    }
    

    public virtual void reset() {
    }
}

