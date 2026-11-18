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

public class DiagonalUpRightTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!DiagonalUpRightTouchInputToGameKeyEventAction.staticSet_instance) {
            DiagonalUpRightTouchInputToGameKeyEventAction.staticSet_instance = true;
            DiagonalUpRightTouchInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return DiagonalUpRightTouchInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (DiagonalUpRightTouchInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            DiagonalUpRightTouchInputToGameKeyEventAction.instance = new DiagonalUpRightTouchInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) DiagonalUpRightTouchInputToGameKeyEventAction.staticGet_instance());
    }
    

    public DiagonalUpRightTouchInputToGameKeyEventAction() {
        base("Diagonal Up Right Action", TouchMotionGestureFactory.getInstance().DIAGONAL_UP_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

