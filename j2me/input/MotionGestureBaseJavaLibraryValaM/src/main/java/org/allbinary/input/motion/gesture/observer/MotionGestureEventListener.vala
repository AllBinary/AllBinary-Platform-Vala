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
// package org.allbinary.input.motion.gesture.observer

public interface MotionGestureEventListener : JObject, BaseMotionGestureEventListener {
    

    public abstract void onPressedMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onUpMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onDownMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onLeftMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onRightMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onDiagonalDownRightMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onDiagonalDownLeftMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onDiagonalUpRightMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void onDiagonalUpLeftMotionGestureEvent(MotionGestureEvent ev);
    

    public abstract void released(MotionGestureEvent ev);
}

