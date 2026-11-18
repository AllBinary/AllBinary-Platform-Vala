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
// package org.allbinary.animation.transition

public class RunAtEndAnimationListener : JObject, AnimationListenerInterface {
    public Runnable runnable;

    // Java field initializers run after the base constructor
    private void initFieldsRunAtEndAnimationListener() {
    
    }
    

    public RunAtEndAnimationListener(Runnable runnable) {
        base();
        this.initFieldsRunAtEndAnimationListener();
        this.runnable = runnable;
    }
    

    public virtual void onPlatformAnimationStart() {
    }
    

    public virtual void onPlatformAnimationEnd() {
    }
    

    public virtual void onPlatformAnimationRepeat() {
    }
}

