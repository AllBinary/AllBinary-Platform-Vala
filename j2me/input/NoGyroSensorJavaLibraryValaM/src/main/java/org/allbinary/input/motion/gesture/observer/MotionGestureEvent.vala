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
// package org.allbinary.input.motion.gesture.observer
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.TsUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonLabels

public class MotionGestureEvent : AllBinaryEventObject {
    private const string PREVIOUS = " Previous: ";
    private const string HASHCODE = " hashcode: ";
    private MotionGestureInput motionGesture;
    private int32 id;
    private GPoint previousPoint;
    private GPoint currentPoint;
    private CommonLabels commonLabels;

    // Java field initializers run after the base constructor
    private void initFieldsMotionGestureEvent() {
    this.motionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
    
    this.previousPoint = PointFactory.getInstance().ZERO_ZERO;
    this.currentPoint = PointFactory.getInstance().ZERO_ZERO;
    this.commonLabels = CommonLabels.getInstance();
    }
    

    public MotionGestureEvent(JObject source, int32 id, MotionGestureInput motionGesture) {
        base(source);
        this.initFieldsMotionGestureEvent();
        this.id = id;
        this.setMotionGesture(motionGesture);
    }
    

    public virtual MotionGestureInput getMotionGesture() {
        return this.motionGesture;
    }
    

    public virtual void setMotionGesture(MotionGestureInput motionGesture) {
        this.motionGesture = motionGesture;
    }
    

    public virtual GPoint getPreviousPoint() {
        return this.previousPoint;
    }
    

    public virtual void setPreviousPoint(GPoint previousPoint) {
        this.previousPoint = previousPoint;
    }
    

    public virtual GPoint getCurrentPoint() {
        return this.currentPoint;
    }
    

    public virtual void setCurrentPoint(GPoint currentPoint) {
        this.currentPoint = currentPoint;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append(stringUtil.toString1(this.motionGesture));
        stringBuffer.append(this.commonLabels.CURRENT);
        stringBuffer.append(stringUtil.toString1(this.currentPoint));
        stringBuffer.append(MotionGestureEvent.PREVIOUS);
        stringBuffer.append(stringUtil.toString1(this.previousPoint));
        stringBuffer.append(MotionGestureEvent.HASHCODE);
        stringBuffer.appendint(TsUtil.getInstance().hashCode1(this));
        return stringBuffer.toString();
    }
    

    public virtual int32 getId() {
        return this.id;
    }
}

