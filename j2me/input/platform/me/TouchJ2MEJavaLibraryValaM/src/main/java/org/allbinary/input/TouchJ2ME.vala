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
// package org.allbinary.input
// import org.allbinary.input.motion.AllMotionRecognizer
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.input.motion.gesture.observer.GameMotionGestureListener
// import org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

//TouchJ2ME
public class TouchJ2ME : JObject {
    public LogUtil logUtil;
    private int32 DEVICE_ID;
    private AllMotionRecognizer motionRecognizer;

    // Java field initializers run after the base constructor
    private void initFieldsTouchJ2ME() {
    this.logUtil = LogUtil.getInstance();
    this.DEVICE_ID = 0;
    this.motionRecognizer = new AllMotionRecognizer();
    }
    

    public TouchJ2ME() {
        base();
        this.initFieldsTouchJ2ME();
        BasicMotionGesturesHandler motionGesturesHandler = this.motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler();
        motionGesturesHandler.addListenerInterface(new GameMotionGestureListener(MotionGestureReceiveInterfaceFactory.getInstance()));
    }
    

    public virtual void pointerDragged(int32 x, int32 y) {
        {
            this.motionRecognizer.processDraggedMotionEvent(x, y, this.DEVICE_ID, 0);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void pointerPressed(int32 x, int32 y) {
        {
            this.motionRecognizer.processStartMotionEvent(x, y, this.DEVICE_ID, 0);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void pointerReleased(int32 x, int32 y) {
        {
            this.motionRecognizer.processEndMotionEvent(x, y, this.DEVICE_ID, 0);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

