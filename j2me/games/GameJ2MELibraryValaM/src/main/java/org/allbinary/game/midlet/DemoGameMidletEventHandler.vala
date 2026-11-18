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
// package org.allbinary.game.midlet
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class DemoGameMidletEventHandler : BasicEventHandler {
    private static DemoGameMidletEventHandler? gameKeyEventHandler;
    private static bool staticSet_gameKeyEventHandler = false;
    private static DemoGameMidletEventHandler staticGet_gameKeyEventHandler() {
        if (!DemoGameMidletEventHandler.staticSet_gameKeyEventHandler) {
            DemoGameMidletEventHandler.staticSet_gameKeyEventHandler = true;
            DemoGameMidletEventHandler.gameKeyEventHandler = new DemoGameMidletEventHandler();
        }
        return DemoGameMidletEventHandler.gameKeyEventHandler;
    }
    

    public DemoGameMidletEventHandler() {
        base();
    }
    

    public static DemoGameMidletEventHandler getInstance() {
        return DemoGameMidletEventHandler.staticGet_gameKeyEventHandler();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        DemoGameMidletEventListener demoGameMidletEventListener = ((DemoGameMidletEventListener) eventListenerInterface);
        demoGameMidletEventListener.onDemoGameMidletEvent(((DemoGameMidletEvent) eventObject));
    }
}

