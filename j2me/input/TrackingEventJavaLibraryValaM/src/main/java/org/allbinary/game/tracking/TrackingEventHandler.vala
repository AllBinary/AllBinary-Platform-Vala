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
// package org.allbinary.game.tracking
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class TrackingEventHandler : BasicEventHandler {
    private static TrackingEventHandler? instance;
    private static bool staticSet_instance = false;
    private static TrackingEventHandler staticGet_instance() {
        if (!TrackingEventHandler.staticSet_instance) {
            TrackingEventHandler.staticSet_instance = true;
            TrackingEventHandler.instance = new TrackingEventHandler();
        }
        return TrackingEventHandler.instance;
    }
    

    public static TrackingEventHandler getInstance() {
        return TrackingEventHandler.staticGet_instance();
    }
    

    public TrackingEventHandler() {
        base();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        TrackingEventListenerInterface trackingEventListenerInterface = ((TrackingEventListenerInterface) eventListenerInterface);
        trackingEventListenerInterface.onMovement(((TrackingEvent) eventObject));
    }
}

