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
// package org.allbinary.game.input
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventListenerInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.BasicArrayList

public class PlayerGameInput : GameInput, GameKeyEventListenerInterface, DownGameKeyEventListenerInterface, UpGameKeyEventListenerInterface, PressGameKeyEventListenerInterface, EventListenerInterface {
    public GameInputStrings gameInputStrings;
    private int32 playerInputId;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerGameInput() {
    this.gameInputStrings = GameInputStrings.getInstance();
    
    }
    

    public PlayerGameInput(BasicArrayList gameKeyEventList, BasicArrayList removalGameKeyEventList, int32 playerInputId) {
        base(gameKeyEventList, removalGameKeyEventList);
        this.initFieldsPlayerGameInput();
        this.playerInputId = playerInputId;
    }
    

    public virtual void onPressGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    public virtual void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.add(gameKeyEvent);
    }
    

    public virtual void onDownKeyEvent(GameKeyEvent gameKeyEvent) {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    public virtual void onDownKey(int32? gameKeyEvent) {
        PreLogUtil.put(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.to_string()).toString(), this, this.gameInputStrings.ON_DOWN_GAME_KEY);
    }
    

    public virtual void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.addForRemoval(gameKeyEvent);
    }
    

    public virtual void onUpKeyEvent(int32? gameKeyEvent) {
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual int32 getPlayerInputId() {
        return this.playerInputId;
    }
}

