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
// package org.allbinary.input.motion.trackball.action
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.input.motion.gesture.TrackballMotionGestureFactory
// import org.allbinary.logic.NullUtil

public class RightTrackballInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!RightTrackballInputToGameKeyEventAction.staticSet_instance) {
            RightTrackballInputToGameKeyEventAction.staticSet_instance = true;
            RightTrackballInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return RightTrackballInputToGameKeyEventAction.instance;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (RightTrackballInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            RightTrackballInputToGameKeyEventAction.instance = new RightTrackballInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) RightTrackballInputToGameKeyEventAction.staticGet_instance());
    }
    

    public RightTrackballInputToGameKeyEventAction() {
        base("Right Action", TrackballMotionGestureFactory.getInstance().RIGHT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
    }
}

