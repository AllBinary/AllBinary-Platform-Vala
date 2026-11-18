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

public class RollLeftOrientationInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!RollLeftOrientationInputToGameKeyEventAction.staticSet_instance) {
            RollLeftOrientationInputToGameKeyEventAction.staticSet_instance = true;
            RollLeftOrientationInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return RollLeftOrientationInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (RollLeftOrientationInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            RollLeftOrientationInputToGameKeyEventAction.instance = new RollLeftOrientationInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) RollLeftOrientationInputToGameKeyEventAction.staticGet_instance());
    }
    

    public RollLeftOrientationInputToGameKeyEventAction() {
        base("Roll Left Action", OrientationMotionGestureFactory.getInstance().ROLL_LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

