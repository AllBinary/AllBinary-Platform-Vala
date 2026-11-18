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
// package org.allbinary.bounds.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class BoundsChangeEventHandler : BasicEventHandler {
    private static BasicEventHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static BasicEventHandler staticGet_SINGLETON() {
        if (!BoundsChangeEventHandler.staticSet_SINGLETON) {
            BoundsChangeEventHandler.staticSet_SINGLETON = true;
            BoundsChangeEventHandler.SINGLETON = new BoundsChangeEventHandler();
        }
        return BoundsChangeEventHandler.SINGLETON;
    }
    

    public BoundsChangeEventHandler() {
        base();
    }
    

    public static BasicEventHandler getInstance() {
        return BoundsChangeEventHandler.staticGet_SINGLETON();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        BoundsChangeEventListener boundsChangeEventListener = ((BoundsChangeEventListener) eventListenerInterface);
        boundsChangeEventListener.onBoundsChangeEvent(((BoundsChangeEvent) eventObject));
    }
}

