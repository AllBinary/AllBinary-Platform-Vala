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
// import org.allbinary.game.input.CompleteMotionGestureInputEvent
// import org.allbinary.game.input.CompleteMotionGestureInputEventHandler
// import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.mapping.InputMappingInterface
// import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.paint.ProcessPaintable
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.TimeDelayHelper

public class TouchButtonsPaintableComposite : ProcessPaintable, CompleteMotionGestureInputEventListenerInterface, EventListenerInterface {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private InputMappingInterface inputMappingInterface;
    public TouchButtonsMappingPaintable touchButtonsPaintable;
    private TimeDelayHelper timeHelper;
    private bool released;
    private string METHOD_NAME;
    private string RELEASE;
    private string FAST_REPEAT;
    private string IGNORE;

    // Java field initializers run after the base constructor
    private void initFieldsTouchButtonsPaintableComposite() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    this.timeHelper = new TimeDelayHelper(250);
    this.released = true;
    this.METHOD_NAME = "onCompleteMotionGestureInputEvent";
    this.RELEASE = "Ignoring: MotionGestureInput Release";
    this.FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly";
    this.IGNORE = "Ignoring: Until Released";
    }
    

    public TouchButtonsPaintableComposite(InputMappingInterface inputMappingInterface, BasicColor basicColor) {
        base();
        this.initFieldsTouchButtonsPaintableComposite();
        this.inputMappingInterface = inputMappingInterface;
        CompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(this);
        this.touchButtonsPaintable = new TouchButtonsMappingPaintable(basicColor);
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent completeMotionGestureInputEvent) {
        {
            this.logUtil.putF(this.commonStrings.START, this, "onCompleteMotionGestureInputEvent");
            TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
            GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent = ((GameKeyCompleteMotionGestureInputEvent) completeMotionGestureInputEvent);
            GameKey gameKey = gameKeyCompleteMotionGestureInputEvent.getGameKey();
            MotionGestureInput motionGestureInput = completeMotionGestureInputEvent.getMotionGestureInput();
            if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
                this.logUtil.putF(this.RELEASE, this, this.METHOD_NAME);
                this.released = true;
                return;
            }
            if (motionGestureInput == TouchMotionGestureFactory.getInstance().NO_MOTION && !this.timeHelper.isTimeTNT()) {
                this.logUtil.putF(this.FAST_REPEAT, this, this.METHOD_NAME);
                return;
            }
            if (!this.released) {
                this.logUtil.putF(this.IGNORE, this, this.METHOD_NAME);
                return;
            }
            this.released = false;
            this.logUtil.putF(new StringMaker().append("GameKey: ").append(StringUtil.getInstance().toString1(gameKey)).append(" MotionGestureInput: ").append(StringUtil.getInstance().toString1(motionGestureInput)).toString(), this, this.METHOD_NAME);
            this.inputMappingInterface.processInputMapping(gameKey, motionGestureInput);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void process() {
        CompleteMotionGestureInputEventHandler.getInstance().removeListener(this);
    }
}

