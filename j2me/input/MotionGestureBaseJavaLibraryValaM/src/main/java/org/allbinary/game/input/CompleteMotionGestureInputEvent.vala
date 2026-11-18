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
// package org.allbinary.game.input
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonStrings

public class CompleteMotionGestureInputEvent : AllBinaryEventObject, CompleteMotionGestureInputInterface, NamedInterface {
    public LogUtil logUtil;
    private string name;
    private MotionGestureInput motionGestureInput;

    // Java field initializers run after the base constructor
    private void initFieldsCompleteMotionGestureInputEvent() {
    this.logUtil = LogUtil.getInstance();
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.motionGestureInput = TouchMotionGestureFactory.getInstance().NO_MOTION;
    }
    

    public CompleteMotionGestureInputEvent(string name, MotionGestureInput motionGestureInput) {
        base(motionGestureInput);
        this.initFieldsCompleteMotionGestureInputEvent();
        this.setName(name);
        {
            this.setMotionGestureInput(motionGestureInput);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void setName(string name) {
        this.name = name;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual void setMotionGestureInput(MotionGestureInput motionGestureInput) {
        this.motionGestureInput = motionGestureInput;
    }
    

    public virtual MotionGestureInput getMotionGestureInput() {
        return this.motionGestureInput;
    }
}

