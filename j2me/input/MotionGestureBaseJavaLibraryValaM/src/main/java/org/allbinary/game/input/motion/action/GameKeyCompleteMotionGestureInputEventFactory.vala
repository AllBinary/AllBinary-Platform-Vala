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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GameKeyCompleteMotionGestureInputEventFactory : JObject {
    private static GameKeyCompleteMotionGestureInputEventFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static GameKeyCompleteMotionGestureInputEventFactory staticGet_SINGLETON() {
        if (!GameKeyCompleteMotionGestureInputEventFactory.staticSet_SINGLETON) {
            GameKeyCompleteMotionGestureInputEventFactory.staticSet_SINGLETON = true;
            GameKeyCompleteMotionGestureInputEventFactory.SINGLETON = new GameKeyCompleteMotionGestureInputEventFactory();
        }
        return GameKeyCompleteMotionGestureInputEventFactory.SINGLETON;
    }
    public LogUtil logUtil;
    private BasicArrayList eventList;

    // Java field initializers run after the base constructor
    private void initFieldsGameKeyCompleteMotionGestureInputEventFactory() {
    this.logUtil = LogUtil.getInstance();
    this.eventList = new BasicArrayListD();
    }

    public GameKeyCompleteMotionGestureInputEventFactory() {
        base();
        this.initFieldsGameKeyCompleteMotionGestureInputEventFactory();
    }
    

    public static GameKeyCompleteMotionGestureInputEventFactory getInstance() {
        return GameKeyCompleteMotionGestureInputEventFactory.staticGet_SINGLETON();
    }
    

    public virtual void add(GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent) {
        this.eventList.add(gameKeyCompleteMotionGestureInputEvent);
    }
    

    public virtual void updateAll() {
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(this.eventList.size()).toString(), this, "updateAll");
        for (int32 index = this.eventList.size() - 1; index >= 0; index--) {
            GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent) this.eventList.objectArray[index]);
            gameKeyCompleteMotionGestureInputEvent.update();
        }
    }
}

