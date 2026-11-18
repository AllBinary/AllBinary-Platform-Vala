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
// import org.allbinary.input.motion.gesture.MotionGestureRecognizer

public class GestureOnlyMotionRecognizer : MotionRecognizer {
    private static int32 index = 0;
    private static GPointCircularPool? pointCircularPool;
    private static bool staticSet_pointCircularPool = false;
    private static GPointCircularPool staticGet_pointCircularPool() {
        if (!GestureOnlyMotionRecognizer.staticSet_pointCircularPool) {
            GestureOnlyMotionRecognizer.staticSet_pointCircularPool = true;
            GestureOnlyMotionRecognizer.pointCircularPool = new GPointCircularPool(40);
        }
        return GestureOnlyMotionRecognizer.pointCircularPool;
    }
    private MotionGestureRecognizer motionGestureRecognizer;
    private int32 id;

    // Java field initializers run after the base constructor
    private void initFieldsGestureOnlyMotionRecognizer() {
    
    
    }
    

    public GestureOnlyMotionRecognizer() {
        base();
        this.initFieldsGestureOnlyMotionRecognizer();
        this.id = GestureOnlyMotionRecognizer.index++;
        this.motionGestureRecognizer = new MotionGestureRecognizer(this.id);
    }
    

    public override void processStartMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        CustomGPoint point = ((CustomGPoint) GestureOnlyMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
    }
    

    public override void processEndMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        CustomGPoint point = ((CustomGPoint) GestureOnlyMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
    }
    

    public override void processDraggedMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        CustomGPoint point = ((CustomGPoint) GestureOnlyMotionRecognizer.staticGet_pointCircularPool().getNextInstance());
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
    }
}

