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
// package org.allbinary.game.displayable.canvas
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BasicMenuInputProcessor : PlayerGameInput, BaseMotionGestureEventListener, EventListenerInterface {
    public BasicArrayList motionGestureEventList;
    private Canvas canvas;

    // Java field initializers run after the base constructor
    private void initFieldsBasicMenuInputProcessor() {
    this.motionGestureEventList = new BasicArrayListD();
    this.canvas = NullCanvas.NULL_CANVAS;
    }
    

    public BasicMenuInputProcessor(BasicArrayList gameKeyEventList, int32 playerInputId, Canvas gameCanvas) {
        base(gameKeyEventList, new BasicArrayListD(), playerInputId);
        this.initFieldsBasicMenuInputProcessor();
        this.canvas = gameCanvas;
    }
    

    public virtual void onMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
        this.motionGestureEventList.add(motionGestureEvent);
    }
    

    public virtual void onScrolledMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
    }
    

    private void setCanvas(MyCanvas canvas) {
        this.canvas = canvas;
    }
    

    public virtual MyCanvas getCanvas() {
        return ((MyCanvas) this.canvas);
    }
    

    public virtual int32 processInputList() {
        return -1;
    }
}

