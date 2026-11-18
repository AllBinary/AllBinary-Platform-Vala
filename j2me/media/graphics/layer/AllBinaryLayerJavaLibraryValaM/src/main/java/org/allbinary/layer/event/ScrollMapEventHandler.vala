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
// package org.allbinary.layer.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class ScrollMapEventHandler : BasicEventHandler {
    private static ScrollMapEventHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static ScrollMapEventHandler staticGet_SINGLETON() {
        if (!ScrollMapEventHandler.staticSet_SINGLETON) {
            ScrollMapEventHandler.staticSet_SINGLETON = true;
            ScrollMapEventHandler.SINGLETON = new ScrollMapEventHandler();
        }
        return ScrollMapEventHandler.SINGLETON;
    }
    

    public ScrollMapEventHandler() {
        base();
    }
    

    public static ScrollMapEventHandler getInstance() {
        return ScrollMapEventHandler.staticGet_SINGLETON();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        ScrollMapEventListenerInterface scrollMapEventListenerInterface = (((ScrollMapEventListenerInterface) eventListenerInterface));
        scrollMapEventListenerInterface.onMoveEvent(((ScrollMapEvent) eventObject));
    }
}

