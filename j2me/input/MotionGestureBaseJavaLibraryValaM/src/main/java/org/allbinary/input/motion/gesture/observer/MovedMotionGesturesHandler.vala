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
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class MovedMotionGesturesHandler : BasicEventHandler {
    private static MovedMotionGesturesHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static MovedMotionGesturesHandler staticGet_SINGLETON() {
        if (!MovedMotionGesturesHandler.staticSet_SINGLETON) {
            MovedMotionGesturesHandler.staticSet_SINGLETON = true;
            MovedMotionGesturesHandler.SINGLETON = new MovedMotionGesturesHandler();
        }
        return MovedMotionGesturesHandler.SINGLETON;
    }
    

    public static MovedMotionGesturesHandler getInstance() {
        return MovedMotionGesturesHandler.staticGet_SINGLETON();
    }
    

    public MovedMotionGesturesHandler() {
        base();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        BaseMotionGestureEventListener baseMotionGestureEventListener = ((BaseMotionGestureEventListener) eventListenerInterface);
        baseMotionGestureEventListener.onMotionGestureEvent(((MotionGestureEvent) eventObject));
    }
}

