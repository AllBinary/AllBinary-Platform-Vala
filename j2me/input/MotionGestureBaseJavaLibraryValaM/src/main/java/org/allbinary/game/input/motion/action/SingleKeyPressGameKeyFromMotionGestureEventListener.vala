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
// import org.allbinary.game.input.CompleteMotionGestureInputEventListener
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.PressGameKeyEventHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings

public class SingleKeyPressGameKeyFromMotionGestureEventListener : CompleteMotionGestureInputEventListener {
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsSingleKeyPressGameKeyFromMotionGestureEventListener() {
    this.logUtil = LogUtil.getInstance();
    }

    public SingleKeyPressGameKeyFromMotionGestureEventListener() {
        base();
        this.initFieldsSingleKeyPressGameKeyFromMotionGestureEventListener();
    }
    

    public override void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public override void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent completeMotionGestureInputEvent) {
        {
            GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent) completeMotionGestureInputEvent);
            GameKeyEvent gameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent();
            PressGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

