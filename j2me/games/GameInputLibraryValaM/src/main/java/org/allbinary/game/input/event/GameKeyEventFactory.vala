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
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil

public class GameKeyEventFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!GameKeyEventFactory.staticSet_instance) {
            GameKeyEventFactory.staticSet_instance = true;
            GameKeyEventFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameKeyEventFactory.instance;
    }
    public LogUtil logUtil;
    public int32 TOUCH_BUTTON_SOURCE_ID;
    public int32 MOTION_GESTURE_SOURCE_ID;
    private int32 MAX_SOURCES;
    private GameKeyEvent[,] ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsGameKeyEventFactory() {
    this.logUtil = LogUtil.getInstance();
    this.TOUCH_BUTTON_SOURCE_ID = 2;
    this.MOTION_GESTURE_SOURCE_ID = 3;
    this.MAX_SOURCES = 4;
    this.ARRAY = new GameKeyEvent[this.MAX_SOURCES, InputFactory.getInstance().MAX_];
    }
    

    public static GameKeyEventFactory getInstance() {
        if (GameKeyEventFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyEventFactory.instance = new GameKeyEventFactory();
        }
        return ((GameKeyEventFactory) GameKeyEventFactory.staticGet_instance());
    }
    

    public GameKeyEventFactory() {
        base();
        this.initFieldsGameKeyEventFactory();
    }
    

    public virtual void init() {
        NullUtil nullUtil = NullUtil.getInstance();
        int32 size = InputFactory.getInstance().MAX_;
        for (int32 index = this.MAX_SOURCES; --index >= 0; ) {
            for (int32 index2 = size; --index2 >= 0; ) {
                this.ARRAY[index, index2] = GameKeyEvent.createEvent(nullUtil.NULL_OBJECT, index, index2);
            }
        }
    }
    

    public virtual GameKeyEvent getInstanceForKey(GameKeyEventSourceInterface anyType, int32 key) {
        GameKeyEvent gameKeyEvent = this.ARRAY[anyType.getSourceId(), key];
        return gameKeyEvent;
    }
    

    public virtual GameKeyEvent getInstanceForInput(GameKeyEventSourceInterface anyType, Input input) {
        GameKeyEvent gameKeyEvent = this.ARRAY[anyType.getSourceId(), input.getId()];
        return gameKeyEvent;
    }
}

