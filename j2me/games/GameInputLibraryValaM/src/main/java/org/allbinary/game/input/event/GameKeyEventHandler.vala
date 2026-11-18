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
// package org.allbinary.game.input.event
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.EventListenerInterface
// import org.allbinary.string.CommonStrings

public class GameKeyEventHandler : JObject {
    private static GameKeyEventHandler? instance;
    private static bool staticSet_instance = false;
    private static GameKeyEventHandler staticGet_instance() {
        if (!GameKeyEventHandler.staticSet_instance) {
            GameKeyEventHandler.staticSet_instance = true;
            GameKeyEventHandler.instance = new GameKeyEventHandler();
        }
        return GameKeyEventHandler.instance;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private PressGameKeyEventHandler pressGameKeyEventHandler;
    private UpGameKeyEventHandler upGameKeyEventHandler;
    private DownGameKeyEventHandler downGameKeyEventHandler;

    // Java field initializers run after the base constructor
    private void initFieldsGameKeyEventHandler() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    }

    public GameKeyEventHandler() {
        base();
        this.initFieldsGameKeyEventHandler();
    }
    

    public static GameKeyEventHandler getInstance() {
        return GameKeyEventHandler.staticGet_instance();
    }
    

    public virtual void removeAllListeners() {
        this.pressGameKeyEventHandler.removeAllListeners();
        this.upGameKeyEventHandler.removeAllListeners();
        this.downGameKeyEventHandler.removeAllListeners();
    }
    

    public virtual void addListenerForPlayer(EventListenerInterface eventListenerInterface, int32 playerInputId) {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
    }
    

    public virtual void addListener(EventListenerInterface eventListenerInterface) {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
    }
    

    public virtual void removeListener(EventListenerInterface eventListenerInterface) {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.REMOVE_LISTENER);
        this.pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
    }
}

