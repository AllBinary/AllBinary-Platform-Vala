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

public class BasicMotionGesturesHandler : BasicEventHandler {
    private static BasicMotionGesturesHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static BasicMotionGesturesHandler staticGet_SINGLETON() {
        if (!BasicMotionGesturesHandler.staticSet_SINGLETON) {
            BasicMotionGesturesHandler.staticSet_SINGLETON = true;
            BasicMotionGesturesHandler.SINGLETON = new BasicMotionGesturesHandler();
        }
        return BasicMotionGesturesHandler.SINGLETON;
    }
    

    public static BasicMotionGesturesHandler getInstance() {
        return BasicMotionGesturesHandler.staticGet_SINGLETON();
    }
    

    public BasicMotionGesturesHandler() {
        base();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        BaseMotionGestureEventListener baseMotionGestureEventListener = ((BaseMotionGestureEventListener) eventListenerInterface);
        baseMotionGestureEventListener.onMotionGestureEvent(((MotionGestureEvent) eventObject));
    }
}

