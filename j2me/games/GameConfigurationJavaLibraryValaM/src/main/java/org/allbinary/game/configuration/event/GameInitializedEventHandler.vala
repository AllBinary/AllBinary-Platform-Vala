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
// package org.allbinary.game.configuration.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.handler.BasicEventHandler

public class GameInitializedEventHandler : BasicEventHandler {
    private static GameInitializedEventHandler? gameKeyEventHandler;
    private static bool staticSet_gameKeyEventHandler = false;
    private static GameInitializedEventHandler staticGet_gameKeyEventHandler() {
        if (!GameInitializedEventHandler.staticSet_gameKeyEventHandler) {
            GameInitializedEventHandler.staticSet_gameKeyEventHandler = true;
            GameInitializedEventHandler.gameKeyEventHandler = new GameInitializedEventHandler();
        }
        return GameInitializedEventHandler.gameKeyEventHandler;
    }
    

    public GameInitializedEventHandler() {
        base();
    }
    

    public static GameInitializedEventHandler getInstance() {
        return GameInitializedEventHandler.staticGet_gameKeyEventHandler();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        GameInitializedListenerInterface gameInitializedListenerInterface = (((GameInitializedListenerInterface) eventListenerInterface));
        gameInitializedListenerInterface.onGameInitialized(((GameInitializedEvent) eventObject));
    }
}

