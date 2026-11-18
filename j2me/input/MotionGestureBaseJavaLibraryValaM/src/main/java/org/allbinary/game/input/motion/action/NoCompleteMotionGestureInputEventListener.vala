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
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

public class NoCompleteMotionGestureInputEventListener : CompleteMotionGestureInputEventListener {
    private static NoCompleteMotionGestureInputEventListener? instance;
    private static bool staticSet_instance = false;
    private static NoCompleteMotionGestureInputEventListener staticGet_instance() {
        if (!NoCompleteMotionGestureInputEventListener.staticSet_instance) {
            NoCompleteMotionGestureInputEventListener.staticSet_instance = true;
            NoCompleteMotionGestureInputEventListener.instance = new NoCompleteMotionGestureInputEventListener();
        }
        return NoCompleteMotionGestureInputEventListener.instance;
    }
    

    public NoCompleteMotionGestureInputEventListener() {
        base();
    }
    

    public override void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public override void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent completeMotionGestureInputEvent) {
    }
    

    public static NoCompleteMotionGestureInputEventListener getInstance() {
        return NoCompleteMotionGestureInputEventListener.staticGet_instance();
    }
}

