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
// package org.allbinary.input.gyro
// import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface
// import org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener
// import org.allbinary.input.AllBinarySensor
// import org.allbinary.logic.math.Orientation

public class AllBinaryOrientationSensor : AllBinarySensor {
    public static AllBinaryOrientationSensor? NULL_ALLBINARY_ORIENTATION_SENSOR;
    private static bool staticSet_NULL_ALLBINARY_ORIENTATION_SENSOR = false;
    public static AllBinaryOrientationSensor staticGet_NULL_ALLBINARY_ORIENTATION_SENSOR() {
        if (!AllBinaryOrientationSensor.staticSet_NULL_ALLBINARY_ORIENTATION_SENSOR) {
            AllBinaryOrientationSensor.staticSet_NULL_ALLBINARY_ORIENTATION_SENSOR = true;
            AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR = new AllBinaryOrientationSensor();
        }
        return AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR;
    }
    private CompleteMotionGestureInputEventListenerInterface listener;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryOrientationSensor() {
    this.listener = NoCompleteMotionGestureInputEventListener.getInstance();
    }
    

    public virtual void setListener(CompleteMotionGestureInputEventListenerInterface completeMotionGestureInputEventListenerInterface) {
        this.listener = completeMotionGestureInputEventListenerInterface;
    }
    

    public AllBinaryOrientationSensor() {
        base();
        this.initFieldsAllBinaryOrientationSensor();
    }
    

    public virtual Orientation getOrientation() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
}

