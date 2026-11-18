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

public class DiagonalUpLeftTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!DiagonalUpLeftTouchInputToGameKeyEventAction.staticSet_instance) {
            DiagonalUpLeftTouchInputToGameKeyEventAction.staticSet_instance = true;
            DiagonalUpLeftTouchInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return DiagonalUpLeftTouchInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (DiagonalUpLeftTouchInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            DiagonalUpLeftTouchInputToGameKeyEventAction.instance = new DiagonalUpLeftTouchInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) DiagonalUpLeftTouchInputToGameKeyEventAction.staticGet_instance());
    }
    

    public DiagonalUpLeftTouchInputToGameKeyEventAction() {
        base("Diagonal Up Left Action", TouchMotionGestureFactory.getInstance().DIAGONAL_UP_LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

