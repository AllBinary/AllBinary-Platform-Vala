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
// package org.allbinary.game.input.motion.action
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.string.CommonStrings

public class GameKeyCompleteMotionGestureInputEvent : CompleteMotionGestureInputEvent, GameKeyEventSourceInterface {
    private GameKeyEventFactory gameKeyEventFactory;
    private int32 SOURCE_ID;
    private GameKey gameKey;
    private GameKeyEvent gameKeyEvent;
    private InputToGameKeyMapping inputToGameKeyMapping;

    // Java field initializers run after the base constructor
    private void initFieldsGameKeyCompleteMotionGestureInputEvent() {
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.SOURCE_ID = this.gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID;
    this.gameKey = GameKey.NULL_GAME_KEY;
    this.gameKeyEvent = GameKeyEvent.NONE;
    
    }
    

    public GameKeyCompleteMotionGestureInputEvent(string name, MotionGestureInput motionGestureInput, InputToGameKeyMapping inputToGameKeyMapping) {
        base(name, motionGestureInput);
        this.initFieldsGameKeyCompleteMotionGestureInputEvent();
        this.inputToGameKeyMapping = inputToGameKeyMapping;
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().add(this);
        this.update();
    }
    

    public virtual int32 getSourceId() {
        return this.SOURCE_ID;
    }
    

    public virtual void update() {
        {
            this.setGameKey(this.inputToGameKeyMapping.getInstance1(this.getMotionGestureInput().getId()));
            this.setGameKeyEvent(this.gameKeyEventFactory.getInstanceForInput(this, this.getGameKey()));
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void setGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.gameKeyEvent = gameKeyEvent;
    }
    

    public virtual GameKeyEvent getGameKeyEvent() {
        return this.gameKeyEvent;
    }
    

    public virtual void setGameKey(GameKey gameKey) {
        this.gameKey = gameKey;
    }
    

    public virtual GameKey getGameKey() {
        return this.gameKey;
    }
}

