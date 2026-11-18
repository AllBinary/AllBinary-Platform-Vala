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

public class GameMidletEventHandler : BasicEventHandler {
    private static GameMidletEventHandler? gameKeyEventHandler;
    private static bool staticSet_gameKeyEventHandler = false;
    private static GameMidletEventHandler staticGet_gameKeyEventHandler() {
        if (!GameMidletEventHandler.staticSet_gameKeyEventHandler) {
            GameMidletEventHandler.staticSet_gameKeyEventHandler = true;
            GameMidletEventHandler.gameKeyEventHandler = new GameMidletEventHandler();
        }
        return GameMidletEventHandler.gameKeyEventHandler;
    }
    

    public GameMidletEventHandler() {
        base();
    }
    

    public static GameMidletEventHandler getInstance() {
        return GameMidletEventHandler.staticGet_gameKeyEventHandler();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        GameMidletEventListener gameMidletEventListener = ((GameMidletEventListener) eventListenerInterface);
        gameMidletEventListener.onGameEnd(eventObject);
    }
}

