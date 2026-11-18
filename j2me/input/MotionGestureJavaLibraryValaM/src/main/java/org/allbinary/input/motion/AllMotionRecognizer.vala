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
// import org.allbinary.graphics.CustomGPoint
// import org.allbinary.graphics.GPointCircularPool
// import org.allbinary.input.motion.button.TouchButtonRecognizer
// import org.allbinary.input.motion.gesture.MotionGestureRecognizer
// import org.allbinary.logic.communication.log.LogUtil

public class AllMotionRecognizer : MotionRecognizer {
    private static int32 index = 0;
    private static GPointCircularPool? pointCircularPool;
    private static bool staticSet_pointCircularPool = false;
    private static GPointCircularPool staticGet_pointCircularPool() {
        if (!AllMotionRecognizer.staticSet_pointCircularPool) {
            AllMotionRecognizer.staticSet_pointCircularPool = true;
            AllMotionRecognizer.pointCircularPool = new GPointCircularPool(40);
        }
        return AllMotionRecognizer.pointCircularPool;
    }
    public LogUtil logUtil;
    private MotionGestureRecognizer motionGestureRecognizer;
    private bool touchButtonProcessing;
    private TouchButtonRecognizer touchButtonRecognizer;
    private int32 id;
    private int32 lastX;
    private int32 lastY;

    // Java field initializers run after the base constructor
    private void initFieldsAllMotionRecognizer() {
    this.logUtil = LogUtil.getInstance();
    
    this.touchButtonProcessing = false;
    
    
    this.lastX = 0;
    this.lastY = 0;
    }
    

    public AllMotionRecognizer() {
        base();
        this.initFieldsAllMotionRecognizer();
        this.id = AllMotionRecognizer.index++;
        this.motionGestureRecognizer = new MotionGestureRecognizer(this.id);
        this.touchButtonRecognizer = new TouchButtonRecognizer();
    }
    

    public override void processStartMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        if (this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing = true;
        }
        if (!this.touchButtonProcessing) {
            CustomGPoint point = ((CustomGPoint) AllMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    public override void processEndMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        if (this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
        }
        if (!this.touchButtonProcessing) {
            CustomGPoint point = ((CustomGPoint) AllMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
        }
        if (this.touchButtonProcessing) {
            this.touchButtonProcessing = false;
        }
    }
    

    public override void processDraggedMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        if (this.touchButtonProcessing) {
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
        if (!this.touchButtonProcessing) {
            CustomGPoint point = ((CustomGPoint) AllMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    public virtual void processMovedMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        if (x != this.lastX || y != this.lastY) {
            this.lastX = x;
            this.lastY = y;
            CustomGPoint point = ((CustomGPoint) AllMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    public virtual void processScrolledMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        CustomGPoint point = ((CustomGPoint) AllMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers);
    }
    

    public virtual MotionGestureRecognizer getMotionGestureRecognizer() {
        return this.motionGestureRecognizer;
    }
}

