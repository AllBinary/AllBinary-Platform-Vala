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
// package org.allbinary.input.motion.gesture
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent

public class MirrorMotionGestureEventUtil : JObject {
    private static MirrorMotionGestureEventUtil? instance;
    private static bool staticSet_instance = false;
    private static MirrorMotionGestureEventUtil staticGet_instance() {
        if (!MirrorMotionGestureEventUtil.staticSet_instance) {
            MirrorMotionGestureEventUtil.staticSet_instance = true;
            MirrorMotionGestureEventUtil.instance = new MirrorMotionGestureEventUtil();
        }
        return MirrorMotionGestureEventUtil.instance;
    }
    private MotionEventCircularPool motionEventCircularPool;

    // Java field initializers run after the base constructor
    private void initFieldsMirrorMotionGestureEventUtil() {
    
    }
    

    public MirrorMotionGestureEventUtil() {
        base();
        this.initFieldsMirrorMotionGestureEventUtil();
        this.motionEventCircularPool = MotionEventCircularPool.createPool(Integer.MAX_VALUE);
    }
    

    public virtual MotionGestureEvent mirrorVerticle(MotionGestureEvent motionGestureEvent, int32 halfWidth) {
        MotionGestureEvent event = this.motionEventCircularPool.getInstance1(motionGestureEvent.getMotionGesture());
        int32 previousNewX = this.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth);
        int32 currentNewX = this.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth);
        PointFactory pointFactory = PointFactory.getInstance();
        GPoint mirroredPreviousPoint = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY());
        GPoint mirroredCurrentPoint = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY());
        event.setPreviousPoint(mirroredPreviousPoint);
        event.setCurrentPoint(mirroredCurrentPoint);
        return event;
    }
    

    public virtual int32 getNewX(int32 x, int32 halfWidth) {
        int32 newX = 0;
        if (x > halfWidth) {
            newX = halfWidth - (x - halfWidth);
        } else {
            newX = halfWidth + (halfWidth - x);
        }
        return newX;
    }
    

    public static MirrorMotionGestureEventUtil getInstance() {
        return MirrorMotionGestureEventUtil.staticGet_instance();
    }
}

