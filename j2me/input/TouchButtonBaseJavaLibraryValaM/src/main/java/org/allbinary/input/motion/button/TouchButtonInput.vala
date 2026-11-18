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
// package org.allbinary.input.motion.button
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class TouchButtonInput : Input, GameKeyEventSourceInterface {
    public LogUtil logUtil;
    private GameKeyEventFactory gameKeyEventFactory;
    private int32 TOUCH_BUTTON_SOURCE_ID;
    private GameKeyEvent gameKeyEvent;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButtonInput() {
    this.logUtil = LogUtil.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.TOUCH_BUTTON_SOURCE_ID = this.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID;
    this.gameKeyEvent = GameKeyEvent.NONE;
    }
    

    public TouchButtonInput(int32 id, string name) {
        base(id, name);
        this.initFieldsTouchButtonInput();
        InputFactory inputFactory = InputFactory.getInstance();
        inputFactory.add(this.getId(), this);
    }
    

    public virtual void update(InputToGameKeyMapping inputToGameKeyMapping) {
        {
            GameKey gameKey = inputToGameKeyMapping.getInstance1(this.getId());
            this.gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int32 getSourceId() {
        return this.TOUCH_BUTTON_SOURCE_ID;
    }
    

    public virtual GameKeyEvent getGameKeyEvent() {
        return this.gameKeyEvent;
    }
}

