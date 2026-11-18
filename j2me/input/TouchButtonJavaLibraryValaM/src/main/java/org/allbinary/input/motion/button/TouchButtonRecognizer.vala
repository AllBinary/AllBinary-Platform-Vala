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
// package org.allbinary.input.motion.button
// import org.allbinary.game.input.event.DownGameKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.Rectangle
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.math.RectangleCollisionUtil
// import org.allbinary.util.BasicArrayList

public class TouchButtonRecognizer : JObject {
    public LogUtil logUtil;
    private RectangleCollisionUtil rectangleCollisionUtil;
    public UpGameKeyEventHandler upGameKeyEventHandler;
    private DownGameKeyEventHandler downGameKeyEventHandler;
    private TouchButtonInput lastPressedTouchButtonInput;
    public CurrentlyPressedTouchButtonSingleton currentlyPressedTouchButtonSingleton;
    private ReleaseHelper releaseHelper;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButtonRecognizer() {
    this.logUtil = LogUtil.getInstance();
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE;
    this.currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance();
    this.releaseHelper = null;
    }
    

    public TouchButtonRecognizer() {
        base();
        this.initFieldsTouchButtonRecognizer();
        if (TouchScreenFactory.getInstance().isMultiTouch()) {
            this.releaseHelper = new MultitouchReleaseHelper(this);
        } else {
            this.releaseHelper = new ReleaseHelper(this);
        }
    }
    

    private void processRelease(TouchButtonInput touchButtonInput, int32 deviceId) {
        this.releaseHelper.release(touchButtonInput, deviceId);
        GameKeyEvent gameKeyEvent = touchButtonInput.getGameKeyEvent();
        this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
        this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
        this.currentlyPressedTouchButtonSingleton.remove(touchButtonInput);
    }
    

    public virtual bool releaseTouchButtonInput(int32 x, int32 y, int32 deviceId) {
        TouchButtonInput touchButtonInput = this.lastPressedTouchButtonInput;
        if (this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
            this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE;
            this.processRelease(touchButtonInput, deviceId);
            return true;
        } else {
            BasicArrayList list = TouchButtonFactory.getInstance().getList();
            Rectangle rectangle = null;
            GPoint point = null;
            TouchButton touchButton = null;
            for (int32 index = list.size() - 1; index >= 0; index--) {
                touchButton = ((TouchButton) list.objectArray[index]);
                rectangle = touchButton.getRectangle();
                point = rectangle.getPoint();
                if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                    touchButtonInput = touchButton.getTouchButtonInput();
                    this.processRelease(touchButtonInput, deviceId);
                    return true;
                }
            }
        }
        return false;
    }
    

    public virtual bool pressTouchButtonInput(int32 x, int32 y, int32 deviceId) {
        BasicArrayList list = TouchButtonFactory.getInstance().getList();
        Rectangle rectangle = null;
        GPoint point = null;
        TouchButton touchButton = null;
        TouchButtonInput touchButtonInput = null;
        GameKeyEvent gameKeyEvent = null;
        for (int32 index = list.size() - 1; index >= 0; index--) {
            touchButton = ((TouchButton) list.objectArray[index]);
            rectangle = touchButton.getRectangle();
            point = rectangle.getPoint();
            if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                touchButtonInput = touchButton.getTouchButtonInput();
                if (!this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
                    this.releaseHelper.release(touchButtonInput, deviceId);
                    this.lastPressedTouchButtonInput = touchButtonInput;
                    this.currentlyPressedTouchButtonSingleton.add(touchButtonInput);
                    gameKeyEvent = touchButtonInput.getGameKeyEvent();
                    this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                    this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
                }
                return true;
            }
        }
        return false;
    }
}

