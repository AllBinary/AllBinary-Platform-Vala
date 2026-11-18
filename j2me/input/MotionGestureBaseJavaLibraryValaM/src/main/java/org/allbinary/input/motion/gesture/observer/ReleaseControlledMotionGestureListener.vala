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
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class ReleaseControlledMotionGestureListener : JObject, MotionGestureEventListener, BaseMotionGestureEventListener, EventListenerInterface {
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private MotionGestureInput currentMotionGesture;
    private bool isMouseGestureOccurring;
    private BasicArrayList motionGestureCollection;
    private CompleteMotionGestureListenerInterface signed;

    // Java field initializers run after the base constructor
    private void initFieldsReleaseControlledMotionGestureListener() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
    this.isMouseGestureOccurring = false;
    this.motionGestureCollection = new BasicArrayListD();
    
    }
    

    public ReleaseControlledMotionGestureListener(CompleteMotionGestureListenerInterface signed) {
        base();
        this.initFieldsReleaseControlledMotionGestureListener();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.signed = signed;
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    public virtual void onUpMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onDownMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onLeftMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onRightMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onDiagonalDownRightMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onDiagonalDownLeftMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onDiagonalUpRightMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onDiagonalUpLeftMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onPressedMotionGestureEvent(MotionGestureEvent ev) {
        this.isMouseGestureOccurring = true;
        this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
        this.onMotionGestureEvent(ev);
    }
    

    public virtual void onScrolledMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
    }
    

    public virtual void released(MotionGestureEvent ev) {
        {
            if (this.isMouseGestureOccurring == false) {
                return;
            }
            this.isMouseGestureOccurring = false;
            this.signed.onMotionGestureCompleted(this.motionGestureCollection);
            this.motionGestureCollection.clear();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void onMotionGestureEvent(MotionGestureEvent ev) {
        if (this.isMouseGestureOccurring == false) {
            return;
        }
        MotionGestureInput motionGestureInput = ev.getMotionGesture();
        if (motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED) {
            this.onPressedMotionGestureEvent(ev);
        } else if (motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED) {
            this.released(ev);
        } else {
            if (this.currentMotionGesture != motionGestureInput) {
                this.currentMotionGesture = motionGestureInput;
                this.motionGestureCollection.add(ev.getMotionGesture());
            }
        }
    }
}

