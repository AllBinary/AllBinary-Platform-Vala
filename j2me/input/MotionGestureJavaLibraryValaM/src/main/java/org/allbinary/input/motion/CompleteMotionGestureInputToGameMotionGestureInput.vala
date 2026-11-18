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
// package org.allbinary.input.motion
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
// import org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction
// import org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CompleteMotionGestureInputToGameMotionGestureInput : JObject {
    private static CompleteMotionGestureInputToGameMotionGestureInput? instance;
    private static bool staticSet_instance = false;
    private static CompleteMotionGestureInputToGameMotionGestureInput staticGet_instance() {
        if (!CompleteMotionGestureInputToGameMotionGestureInput.staticSet_instance) {
            CompleteMotionGestureInputToGameMotionGestureInput.staticSet_instance = true;
            CompleteMotionGestureInputToGameMotionGestureInput.instance = new CompleteMotionGestureInputToGameMotionGestureInput();
        }
        return CompleteMotionGestureInputToGameMotionGestureInput.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsCompleteMotionGestureInputToGameMotionGestureInput() {
    this.logUtil = LogUtil.getInstance();
    }

    public CompleteMotionGestureInputToGameMotionGestureInput() {
        base();
        this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput();
    }
    

    public static CompleteMotionGestureInputToGameMotionGestureInput getInstance() {
        return CompleteMotionGestureInputToGameMotionGestureInput.staticGet_instance();
    }
    

    public virtual void init() {
        CommonStrings commonStrings = CommonStrings.getInstance();
        {
            PreLogUtil.put("Compound Motion Gestures", this, commonStrings.INIT);
            MotionGestureConfiguration motionGestureConfiguration = MotionGestureConfigurationFactory.getInstance();
            TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
            BasicArrayList list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DOWN);
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.UP);
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.RELEASED);
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance());
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

