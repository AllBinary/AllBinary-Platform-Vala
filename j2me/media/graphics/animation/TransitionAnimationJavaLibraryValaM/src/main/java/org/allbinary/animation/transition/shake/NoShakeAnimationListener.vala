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
// package org.allbinary.animation.transition.shake

public class NoShakeAnimationListener : ShakeAnimationListener {
    public static ShakeAnimationListener? NO_SHAKE_ANIMATION_LISTENER;
    private static bool staticSet_NO_SHAKE_ANIMATION_LISTENER = false;
    public static ShakeAnimationListener staticGet_NO_SHAKE_ANIMATION_LISTENER() {
        if (!NoShakeAnimationListener.staticSet_NO_SHAKE_ANIMATION_LISTENER) {
            NoShakeAnimationListener.staticSet_NO_SHAKE_ANIMATION_LISTENER = true;
            NoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER = new NoShakeAnimationListener();
        }
        return NoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER;
    }

    public NoShakeAnimationListener() {
        base();
    }
}

