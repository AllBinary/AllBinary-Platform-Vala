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

public class AnimationBehaviorFactory : JObject {
    private static AnimationBehaviorFactory? instance;
    private static bool staticSet_instance = false;
    private static AnimationBehaviorFactory staticGet_instance() {
        if (!AnimationBehaviorFactory.staticSet_instance) {
            AnimationBehaviorFactory.staticSet_instance = true;
            AnimationBehaviorFactory.instance = new AnimationBehaviorFactory();
        }
        return AnimationBehaviorFactory.instance;
    }

    public AnimationBehaviorFactory() {
        base();
    }
    

    public static AnimationBehaviorFactory getInstance() {
        return AnimationBehaviorFactory.staticGet_instance();
    }
    

    public virtual AnimationBehavior getOrCreateInstance() {
        return AnimationBehavior.getInstance();
    }
}

