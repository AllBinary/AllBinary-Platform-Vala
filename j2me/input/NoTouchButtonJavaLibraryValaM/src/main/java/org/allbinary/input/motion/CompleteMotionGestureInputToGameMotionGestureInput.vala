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
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.string.CommonStrings

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
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsCompleteMotionGestureInputToGameMotionGestureInput() {
    this.commonStrings = CommonStrings.getInstance();
    }

    public CompleteMotionGestureInputToGameMotionGestureInput() {
        base();
        this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput();
    }
    

    public static CompleteMotionGestureInputToGameMotionGestureInput getInstance() {
        return CompleteMotionGestureInputToGameMotionGestureInput.staticGet_instance();
    }
    

    public virtual void init() {
        PreLogUtil.put("No Touch Button = No Compound Motion Gestures", this, this.commonStrings.INIT);
    }
}

