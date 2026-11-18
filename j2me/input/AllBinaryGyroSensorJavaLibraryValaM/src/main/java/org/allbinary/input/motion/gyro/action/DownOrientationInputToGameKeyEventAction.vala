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

public class DownOrientationInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!DownOrientationInputToGameKeyEventAction.staticSet_instance) {
            DownOrientationInputToGameKeyEventAction.staticSet_instance = true;
            DownOrientationInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return DownOrientationInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (DownOrientationInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            DownOrientationInputToGameKeyEventAction.instance = new DownOrientationInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) DownOrientationInputToGameKeyEventAction.staticGet_instance());
    }
    

    public DownOrientationInputToGameKeyEventAction() {
        base("Down Action", OrientationMotionGestureFactory.getInstance().DOWN, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

