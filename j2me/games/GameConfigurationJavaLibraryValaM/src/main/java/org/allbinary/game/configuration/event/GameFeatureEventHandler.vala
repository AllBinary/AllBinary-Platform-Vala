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

public class GameFeatureEventHandler : BasicEventHandler {
    private static GameFeatureEventHandler? gameKeyEventHandler;
    private static bool staticSet_gameKeyEventHandler = false;
    private static GameFeatureEventHandler staticGet_gameKeyEventHandler() {
        if (!GameFeatureEventHandler.staticSet_gameKeyEventHandler) {
            GameFeatureEventHandler.staticSet_gameKeyEventHandler = true;
            GameFeatureEventHandler.gameKeyEventHandler = new GameFeatureEventHandler();
        }
        return GameFeatureEventHandler.gameKeyEventHandler;
    }
    

    public GameFeatureEventHandler() {
        base();
    }
    

    public static GameFeatureEventHandler getInstance() {
        return GameFeatureEventHandler.staticGet_gameKeyEventHandler();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        GameFeatureListenerInterface gameFeatureListenerInterface = (((GameFeatureListenerInterface) eventListenerInterface));
        gameFeatureListenerInterface.onGameFeatureChange(((GameFeatureEvent) eventObject));
    }
}

