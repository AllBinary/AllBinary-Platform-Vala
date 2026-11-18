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
// package org.allbinary.graphics.displayable.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class DisplayChangeEventHandler : BasicEventHandler {
    private static DisplayChangeEventHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static DisplayChangeEventHandler staticGet_SINGLETON() {
        if (!DisplayChangeEventHandler.staticSet_SINGLETON) {
            DisplayChangeEventHandler.staticSet_SINGLETON = true;
            DisplayChangeEventHandler.SINGLETON = new DisplayChangeEventHandler();
        }
        return DisplayChangeEventHandler.SINGLETON;
    }
    

    public static DisplayChangeEventHandler getInstance() {
        return DisplayChangeEventHandler.staticGet_SINGLETON();
    }
    

    public DisplayChangeEventHandler() {
        base();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        DisplayChangeEventListener displayChangeEventListener = (((DisplayChangeEventListener) eventListenerInterface));
        displayChangeEventListener.onDisplayChangeEvent(((DisplayChangeEvent) eventObject));
    }
}

