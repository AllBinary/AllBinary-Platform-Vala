/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

public class LastDisplayChangeEventHandler : BasicEventHandler {
    private static LastDisplayChangeEventHandler? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static LastDisplayChangeEventHandler staticGet_SINGLETON() {
        if (!LastDisplayChangeEventHandler.staticSet_SINGLETON) {
            LastDisplayChangeEventHandler.staticSet_SINGLETON = true;
            LastDisplayChangeEventHandler.SINGLETON = new LastDisplayChangeEventHandler();
        }
        return LastDisplayChangeEventHandler.SINGLETON;
    }
    

    public static LastDisplayChangeEventHandler getInstance() {
        return LastDisplayChangeEventHandler.staticGet_SINGLETON();
    }
    

    public LastDisplayChangeEventHandler() {
        base();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        DisplayChangeEventListener displayChangeEventListener = (((DisplayChangeEventListener) eventListenerInterface));
        displayChangeEventListener.onDisplayChangeEvent(((DisplayChangeEvent) eventObject));
    }
}

