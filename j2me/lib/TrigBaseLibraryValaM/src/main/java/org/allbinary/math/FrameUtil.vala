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
// package org.allbinary.math
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

public class FrameUtil : JObject {
    private static FrameUtil? instance;
    private static bool staticSet_instance = false;
    private static FrameUtil staticGet_instance() {
        if (!FrameUtil.staticSet_instance) {
            FrameUtil.staticSet_instance = true;
            FrameUtil.instance = new FrameUtil();
        }
        return FrameUtil.instance;
    }
    

    public static FrameUtil getInstance() {
        return FrameUtil.staticGet_instance();
    }
    

    public FrameUtil() {
        base();
    }
    

    public virtual int32 getFrameForAngle(int16 angle, int32 angleIncrement) {
        return this.adjustAngleToFrameAngle(((int32) (angle))) / angleIncrement;
    }
    

    public virtual int32 getFrameAngle(int32 frame, int32 angleIncrement) {
        int32 frameAngle = angleIncrement * frame - 90;
        return this.adjustAngleToFrameAngle(frameAngle);
    }
    

    public virtual int32 adjustAngleToFrameAngle(int32 currentAngle) {
        AngleFactory angleFactory = AngleFactory.getInstance();
        if (currentAngle > 359) {
            currentAngle = (currentAngle - ((int32) (angleFactory.TOTAL_ANGLE)));
            while (currentAngle > 359) {
                currentAngle = (currentAngle - ((int32) (angleFactory.TOTAL_ANGLE)));
            }
        }
        if (currentAngle < 0) {
            currentAngle = (currentAngle + ((int32) (angleFactory.TOTAL_ANGLE)));
            while (currentAngle < 0) {
                currentAngle = (currentAngle + ((int32) (angleFactory.TOTAL_ANGLE)));
            }
        }
        return currentAngle;
    }
}

