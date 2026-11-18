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
// package org.allbinary.game.init
// import org.allbinary.game.configuration.event.GameInitializedEvent
// import org.allbinary.game.configuration.event.GameInitializedEventHandler
// import org.allbinary.game.configuration.event.GameInitializedListenerInterface
// import org.allbinary.game.resource.FeatureResourceInitializationUtil
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings

public class DefaultGameInitializationListener : JObject, GameInitializedListenerInterface, EventListenerInterface {
    public LogUtil logUtil;
    private SWTJOGLProcessor swtJOGLProcessor;
    public bool firstTime;

    // Java field initializers run after the base constructor
    private void initFieldsDefaultGameInitializationListener() {
    this.logUtil = LogUtil.getInstance();
    this.swtJOGLProcessor = SWTJOGLProcessor.getInstance();
    this.firstTime = true;
    }
    

    public DefaultGameInitializationListener() {
        base();
        this.initFieldsDefaultGameInitializationListener();
        GameInitializedEventHandler gameInitializedEventHandler = GameInitializedEventHandler.getInstance();
        gameInitializedEventHandler.removeAllListeners();
        gameInitializedEventHandler.addListenerInterface(((GameInitializedListenerInterface) this));
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onGameInitialized(GameInitializedEvent gameInitializedEvent) {
        string ON_GAME_INITIALIZED = "onGameInitialized";
        CommonStrings commonStrings = CommonStrings.getInstance();
        {
            this.logUtil.putF(commonStrings.START, this, ON_GAME_INITIALIZED);
            while (!this.swtJOGLProcessor.isHolderCreated()) {
                this.logUtil.putF(commonStrings.UPDATE, this, ON_GAME_INITIALIZED);
                Thread.sleep(20);
            }
            FeatureResourceInitializationUtil.getInstance().init(gameInitializedEvent.getLevel());
            if (this.firstTime) {
                this.firstTime = false;
            } else {
                this.swtJOGLProcessor.onSurfaceChanged();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

