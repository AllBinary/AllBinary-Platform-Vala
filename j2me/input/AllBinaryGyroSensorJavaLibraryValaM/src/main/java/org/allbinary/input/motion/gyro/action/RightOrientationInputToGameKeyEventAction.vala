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

public class RightOrientationInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!RightOrientationInputToGameKeyEventAction.staticSet_instance) {
            RightOrientationInputToGameKeyEventAction.staticSet_instance = true;
            RightOrientationInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return RightOrientationInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (RightOrientationInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            RightOrientationInputToGameKeyEventAction.instance = new RightOrientationInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) RightOrientationInputToGameKeyEventAction.staticGet_instance());
    }
    

    public RightOrientationInputToGameKeyEventAction() {
        base("Right Action", OrientationMotionGestureFactory.getInstance().RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

