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
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.string.CommonStrings

public class ReleaseTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!ReleaseTouchInputToGameKeyEventAction.staticSet_instance) {
            ReleaseTouchInputToGameKeyEventAction.staticSet_instance = true;
            ReleaseTouchInputToGameKeyEventAction.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return ReleaseTouchInputToGameKeyEventAction.instance;
    }
    private GameKey NONE;

    // Java field initializers run after the base constructor
    private void initFieldsReleaseTouchInputToGameKeyEventAction() {
    this.NONE = GameKeyFactory.getInstance().NONE;
    }
    

    public static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (ReleaseTouchInputToGameKeyEventAction.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            ReleaseTouchInputToGameKeyEventAction.instance = new ReleaseTouchInputToGameKeyEventAction();
        }
        return ((GameKeyCompleteMotionGestureInputEvent) ReleaseTouchInputToGameKeyEventAction.staticGet_instance());
    }
    

    public ReleaseTouchInputToGameKeyEventAction() {
        base("Release Action", TouchMotionGestureFactory.getInstance().RELEASED, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping());
        this.initFieldsReleaseTouchInputToGameKeyEventAction();
        {
            this.setGameKey(this.NONE);
            this.setGameKeyEvent(GameKeyEventFactory.getInstance().getInstanceForInput(this, this.NONE));
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void update() {
    }
}

