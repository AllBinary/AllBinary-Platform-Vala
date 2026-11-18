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
// package org.allbinary.input.motion.touch.action
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.NullUtil

public class DownTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!DownTouchInputToGameKeyEventAction.staticSet_instance) {
            DownTouchInputToGameKeyEventAction.staticSet_instance = true;
            DownTouchInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return DownTouchInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (DownTouchInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            DownTouchInputToGameKeyEventAction.instance = new DownTouchInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) DownTouchInputToGameKeyEventAction.staticGet_instance());
    }
    

    public DownTouchInputToGameKeyEventAction() {
        base("Down Action", TouchMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

