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

public class ScrolledMotionGesturesHandler : BasicEventHandler {
    private static ScrolledMotionGesturesHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static ScrolledMotionGesturesHandler staticGet_SINGLETON() {
        if (!ScrolledMotionGesturesHandler.staticSet_SINGLETON) {
            ScrolledMotionGesturesHandler.staticSet_SINGLETON = true;
            ScrolledMotionGesturesHandler.SINGLETON = new ScrolledMotionGesturesHandler();
        }
        return ScrolledMotionGesturesHandler.SINGLETON;
    }
    

    public static ScrolledMotionGesturesHandler getInstance() {
        return ScrolledMotionGesturesHandler.staticGet_SINGLETON();
    }
    

    public ScrolledMotionGesturesHandler() {
        base();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        BaseMotionGestureEventListener baseMotionGestureEventListener = ((BaseMotionGestureEventListener) eventListenerInterface);
        baseMotionGestureEventListener.onScrolledMotionGestureEvent(((MotionGestureEvent) eventObject));
    }
}

