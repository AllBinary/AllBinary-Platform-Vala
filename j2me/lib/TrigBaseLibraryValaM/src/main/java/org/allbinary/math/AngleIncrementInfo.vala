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
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import jsinterop.annotations.JsProperty
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

public class AngleIncrementInfo : JObject {
    private const string INCREMENT = "Inc: ";
    private int16 angleIncrement;
    public int32? DOWN_FRAME;
    public int32? UP_FRAME;
    public int32? LEFT_FRAME;
    public int32? RIGHT_FRAME;
    private FrameUtil frameUtil;

    // Java field initializers run after the base constructor
    private void initFieldsAngleIncrementInfo() {
    
    
    
    
    
    this.frameUtil = FrameUtil.getInstance();
    }
    

    public AngleIncrementInfo(int16 angleIncrement) {
        base();
        this.initFieldsAngleIncrementInfo();
        this.angleIncrement = angleIncrement;
        AngleFactory angleFactory = AngleFactory.getInstance();
        SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        this.DOWN_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.DOWN.getValue() / this.angleIncrement);
        this.UP_FRAME = smallIntegerSingletonFactory.getAt(((int32) (angleFactory.UP.getValue())));
        this.LEFT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.LEFT.getValue() / this.angleIncrement);
        this.RIGHT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.RIGHT.getValue() / this.angleIncrement);
    }
    

    public virtual int32 getFrameAngle(int32 frame) {
        return this.frameUtil.getFrameAngle(frame, ((int32) (this.angleIncrement)));
    }
    

    public virtual int16 getAngleIncrement() {
        return this.angleIncrement;
    }
    

    public override string toString() {
        return new StringMaker().append(AngleIncrementInfo.INCREMENT).appendshort(this.angleIncrement).toString();
    }
    

    public virtual int32 getClosestGeneralDirection(int16 angle) {
        int32? closestDirection = SmallIntegerSingletonFactory.getInstance().getAt(360);
        if (((int32) this.UP_FRAME) - angle < ((int32) closestDirection) - angle) {
            closestDirection = this.UP_FRAME;
        }
        if (((int32) this.DOWN_FRAME) - angle < ((int32) closestDirection) - angle) {
            closestDirection = this.DOWN_FRAME;
        }
        if (((int32) this.LEFT_FRAME) - angle < ((int32) closestDirection) - angle) {
            closestDirection = this.LEFT_FRAME;
        }
        if (((int32) this.RIGHT_FRAME) - angle < ((int32) closestDirection) - angle) {
            closestDirection = this.RIGHT_FRAME;
        }
        return ((int32) closestDirection);
    }
}

