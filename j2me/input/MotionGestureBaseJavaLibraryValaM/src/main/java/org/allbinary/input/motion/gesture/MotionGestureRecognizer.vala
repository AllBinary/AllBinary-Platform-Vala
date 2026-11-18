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
// import org.allbinary.graphics.Line
// import org.allbinary.graphics.PointFactory
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration
// import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.input.motion.gesture.observer.MovedMotionGesturesHandler
// import org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.J2SEMath
// import org.allbinary.logic.util.event.handler.BasicEventHandler
// import org.allbinary.string.CommonStrings

public class MotionGestureRecognizer : JObject {
    public LogUtil logUtil;
    private J2SEMath j2seMath;
    private GPoint origin;
    private GPoint previous;
    private GPoint intermediate;
    private Line line;
    private BasicMotionGesturesHandler motionGesturesHandler;
    private BasicEventHandler movedMotionGesturesHandler;
    private BasicEventHandler scrolledMotionGesturesHandler;
    private MotionEventCircularPool motionEventCircularPool;

    // Java field initializers run after the base constructor
    private void initFieldsMotionGestureRecognizer() {
    this.logUtil = LogUtil.getInstance();
    this.j2seMath = J2SEMath.getInstance();
    this.origin = PointFactory.getInstance().ZERO_ZERO;
    this.previous = this.origin;
    this.intermediate = this.origin;
    this.line = new Line(this.origin, this.origin);
    
    
    
    
    }
    

    public MotionGestureRecognizer(int32 id) {
        base();
        this.initFieldsMotionGestureRecognizer();
        this.motionEventCircularPool = MotionEventCircularPool.createPool(id);
        BasicEventHandler motionGesturesHandler = new BasicEventHandler();
        BasicEventHandler movedMotionGesturesHandler = motionGesturesHandler;
        BasicEventHandler scrolledMotionGesturesHandler = motionGesturesHandler;
        {
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance();
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance();
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance();
        } /* catch (Exception e): a thrown Java exception stops the program */
        this.motionGesturesHandler = ((BasicMotionGesturesHandler) motionGesturesHandler);
        this.movedMotionGesturesHandler = movedMotionGesturesHandler;
        this.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler;
    }
    

    public virtual bool processPressedMotionEvent(GPoint current, int32 deviceId, int32 button) {
        this.intermediate = this.origin;
        this.previous = this.origin;
        MotionGestureEvent event = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().PRESSED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public virtual bool processReleasedMotionEvent(GPoint current, int32 deviceId, int32 button) {
        MotionGestureEvent event = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().RELEASED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public virtual void processDraggedMotionEvent(GPoint current, int32 deviceId, int32 buttonMask) {
        if (this.previous == this.origin || this.intermediate == this.origin) {
            this.previous = current;
            this.intermediate = current;
            return;
        }
        this.line.setP1(this.previous);
        this.line.setP2(current);
        int32 minimumMotionGesture = MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture();
        if (this.j2seMath.abs(((float) (this.line.getDeltaX()))) < minimumMotionGesture && this.j2seMath.abs(((float) (this.line.getDeltaY()))) < minimumMotionGesture) {
            this.intermediate = current;
            return;
        }
        double gradient = this.line.getGradient();
        double absGradient = ((double) (this.j2seMath.abs(((float) (gradient)))));
        MotionGestureConfiguration conf = MotionGestureConfigurationFactory.getInstance();
        TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        MotionGestureInput newMotionGesture = touchMotionGestureFactory.NO_MOTION;
        double diagonalToleranceHigher = 12.0;
        double diagonalToleranceLower = 12.0;
        if (conf.isDiagonalMotionGestureAllowed()) {
            diagonalToleranceHigher = ((double) ((90 - conf.getDiagonalTolerance())));
            diagonalToleranceLower = ((double) (conf.getDiagonalTolerance()));
        }
        if (absGradient > Math.tan(Math.toRadians(diagonalToleranceHigher))) {
            if (this.line.getDeltaY() > 0.0) {
                newMotionGesture = touchMotionGestureFactory.UP;
            } else {
                newMotionGesture = touchMotionGestureFactory.DOWN;
            }
        } else {
            if (absGradient < Math.tan(Math.toRadians(diagonalToleranceLower))) {
                if (this.line.getDeltaX() > 0.0) {
                    newMotionGesture = touchMotionGestureFactory.LEFT;
                } else {
                    newMotionGesture = touchMotionGestureFactory.RIGHT;
                }
            } else {
                if (gradient > 0.0) {
                    if (this.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT;
                    }
                } else {
                    if (this.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT;
                    }
                }
            }
        }
        this.previous = current;
        this.intermediate = current;
        MotionGestureEvent event = this.motionEventCircularPool.getInstance1(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return;
    }
    

    public virtual bool processMovedMotionEvent(GPoint current, int32 deviceId, int32 button) {
        MotionGestureEvent event = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().NO_MOTION);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.movedMotionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public virtual bool processScrolledMotionEvent(GPoint current, int32 deviceId, int32 button) {
        TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        MotionGestureInput newMotionGesture = touchMotionGestureFactory.NO_MOTION;
        if (button > 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP;
        } else if (button < 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN;
        }
        MotionGestureEvent event = this.motionEventCircularPool.getInstance1(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.scrolledMotionGesturesHandler.fireEvent(event);
        return true;
    }
    

    public virtual BasicMotionGesturesHandler getMotionGesturesHandler() {
        return this.motionGesturesHandler;
    }
}

