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
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.math.RectangleCollisionUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

public class PopupMenuInputProcessor : BasicMenuInputProcessor {
    private RectangleCollisionUtil rectangleCollisionUtil;
    private int32 CLICK_DELAY;
    private TimeDelayHelper clickTimeHelper;
    private Rectangle rectangle;

    // Java field initializers run after the base constructor
    private void initFieldsPopupMenuInputProcessor() {
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    this.CLICK_DELAY = 120;
    this.clickTimeHelper = new TimeDelayHelper(this.CLICK_DELAY);
    
    }
    

    public PopupMenuInputProcessor(BasicArrayList gameKeyEventList, int32 playerInputId, MyCanvas gameCanvas, Rectangle rectangle) {
        base(gameKeyEventList, playerInputId, gameCanvas);
        this.initFieldsPopupMenuInputProcessor();
        this.rectangle = rectangle;
    }
    

    public virtual void init(Rectangle rectangle) {
        this.rectangle = rectangle;
    }
    

    public virtual int32 processInput(int32 key) {
        if (key == Canvas.KEY_STAR) {
            AllBinaryGameCanvas gameCanvas = ((AllBinaryGameCanvas) this.getCanvas());
            gameCanvas.toggleMenu();
            return 1;
        }
        return 0;
    }
    

    public override int32 processInputList() {
        {
            int32 motionInputsIndex = this.processMotionInputs();
            BasicArrayList list = this.getGameKeyEventList();
            int32 size = list.size();
            int32 key = 0;
            GameKeyEvent gameKeyEvent = null;
            for (int32 index = 0; index < size; index++) {
                gameKeyEvent = ((GameKeyEvent) list.objectArray[index]);
                if (gameKeyEvent != null) {
                    key = gameKeyEvent.getKey();
                    if (this.processInput(key) == 1) {
                        break;
                    }
                }
            }
            this.clear();
            if (size > 0 || motionInputsIndex >= 0) {
                return 1;
            } else {
                return -1;
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int32 processMotionInputs() {
        int32 lastIndex = this.motionGestureEventList.size() - 1;
        if (lastIndex >= 0) {
            MotionGestureEvent motionGestureEvent = ((MotionGestureEvent) this.motionGestureEventList.objectArray[lastIndex]);
            this.processMotionInput(motionGestureEvent);
        }
        this.motionGestureEventList.clear();
        return lastIndex;
    }
    

    public virtual void processMotionInput(MotionGestureEvent motionGestureEvent) {
        if (motionGestureEvent == null) {
            this.logUtil.putF("Exception: Bug", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
            return;
        }
        TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        MotionGestureInput motionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
            GPoint point = motionGestureEvent.getCurrentPoint();
            GPoint rectPoint = this.rectangle.getPoint();
            if (this.rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), this.rectangle.getMaxX() + 20, this.rectangle.getMaxY(), point.getX(), point.getY())) {
                if (this.clickTimeHelper.isTimeTNT()) {
                    AllBinaryGameCanvas gameCanvas = ((AllBinaryGameCanvas) this.getCanvas());
                    gameCanvas.toggleMenu();
                }
            }
        }
    }
}

