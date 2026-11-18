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

public class DiagonalDownRightTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!DiagonalDownRightTouchInputToGameKeyEventAction.staticSet_instance) {
            DiagonalDownRightTouchInputToGameKeyEventAction.staticSet_instance = true;
            DiagonalDownRightTouchInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return DiagonalDownRightTouchInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (DiagonalDownRightTouchInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            DiagonalDownRightTouchInputToGameKeyEventAction.instance = new DiagonalDownRightTouchInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) DiagonalDownRightTouchInputToGameKeyEventAction.staticGet_instance());
    }
    

    public DiagonalDownRightTouchInputToGameKeyEventAction() {
        base("Diagonal Down Right Action", TouchMotionGestureFactory.getInstance().DIAGONAL_DOWN_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

