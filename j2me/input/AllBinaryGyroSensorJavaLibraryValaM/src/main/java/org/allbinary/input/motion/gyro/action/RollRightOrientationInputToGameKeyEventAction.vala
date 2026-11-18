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
// package org.allbinary.input.motion.gyro.action
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.input.gyro.OrientationMotionGestureFactory
// import org.allbinary.logic.NullUtil

public class RollRightOrientationInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!RollRightOrientationInputToGameKeyEventAction.staticSet_instance) {
            RollRightOrientationInputToGameKeyEventAction.staticSet_instance = true;
            RollRightOrientationInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return RollRightOrientationInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (RollRightOrientationInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            RollRightOrientationInputToGameKeyEventAction.instance = new RollRightOrientationInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) RollRightOrientationInputToGameKeyEventAction.staticGet_instance());
    }
    

    public RollRightOrientationInputToGameKeyEventAction() {
        base("Roll Right Action", OrientationMotionGestureFactory.getInstance().ROLL_RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

