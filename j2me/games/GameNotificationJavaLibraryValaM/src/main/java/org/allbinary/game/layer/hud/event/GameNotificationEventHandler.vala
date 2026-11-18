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
// package org.allbinary.game.layer.hud.event
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.logic.util.event.NullEventListener
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.util.BasicArrayList

public class GameNotificationEventHandler : BasicEventHandler {
    private static GameNotificationEventHandler? instance;
    private static bool staticSet_instance = false;
    private static GameNotificationEventHandler staticGet_instance() {
        if (!GameNotificationEventHandler.staticSet_instance) {
            GameNotificationEventHandler.staticSet_instance = true;
            GameNotificationEventHandler.instance = new GameNotificationEventHandler();
        }
        return GameNotificationEventHandler.instance;
    }
    public bool enabled;

    // Java field initializers run after the base constructor
    private void initFieldsGameNotificationEventHandler() {
    this.enabled = true;
    }
    

    public GameNotificationEventHandler() {
        base();
        this.initFieldsGameNotificationEventHandler();
    }
    

    public override void removeAllListeners() {
        EventListenerInterface eventListenerInterface = NullEventListener.NULL_EVENT_LISTENER;
        BasicArrayList list = this.eventListenerInterfaceList;
        if (list.size() > 0) {
            eventListenerInterface = ((EventListenerInterface) list.objectArray[0]);
        }
        base.removeAllListeners();
        if (eventListenerInterface != NullEventListener.NULL_EVENT_LISTENER) {
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    public static GameNotificationEventHandler getInstance() {
        return GameNotificationEventHandler.staticGet_instance();
    }
    

    public override void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        if (!this.enabled) {
            return;
        }
        GameNotificationListenerInterface gameNotificationListenerInterface = ((GameNotificationListenerInterface) eventListenerInterface);
        gameNotificationListenerInterface.onGameNotificationEvent(((GameNotificationEvent) eventObject));
    }
}

