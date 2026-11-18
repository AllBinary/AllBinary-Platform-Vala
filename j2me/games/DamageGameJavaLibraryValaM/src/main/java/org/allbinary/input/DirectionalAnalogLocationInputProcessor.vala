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
// import org.allbinary.android.input.motion.AnalogLocationInputProcessor
// import org.allbinary.game.input.GameInputProcessor
// import org.allbinary.game.input.GameKeyEventSourceInterface
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.analog.AnalogLocationInput
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.graphics.CustomGPoint
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class DirectionalAnalogLocationInputProcessor : AnalogLocationInputProcessor, GameKeyEventSourceInterface {
    public LogUtil logUtil;
    private GameInputProcessor[] inputProcessorArray;
    private GameKeyFactory gameKeyFactory;
    private GameKeyEvent leftGameKeyEvent;
    private GameKeyEvent rightGameKeyEvent;
    private GameKeyEvent upGameKeyEvent;
    private GameKeyEvent downGameKeyEvent;
    private GameKeyEvent leftTriggerGameKeyEvent;
    private GameKeyEvent rightTriggerGameKeyEvent;

    // Java field initializers run after the base constructor
    private void initFieldsDirectionalAnalogLocationInputProcessor() {
    this.logUtil = LogUtil.getInstance();
    
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.leftGameKeyEvent = GameKeyEvent.NONE;
    this.rightGameKeyEvent = GameKeyEvent.NONE;
    this.upGameKeyEvent = GameKeyEvent.NONE;
    this.downGameKeyEvent = GameKeyEvent.NONE;
    this.leftTriggerGameKeyEvent = GameKeyEvent.NONE;
    this.rightTriggerGameKeyEvent = GameKeyEvent.NONE;
    }
    

    public DirectionalAnalogLocationInputProcessor(GameInputProcessor[] inputProcessorArray) {
        base();
        this.initFieldsDirectionalAnalogLocationInputProcessor();
        this.inputProcessorArray = inputProcessorArray;
        {
            this.leftGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.LEFT);
            this.rightGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.RIGHT);
            this.upGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.UP);
            this.downGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.DOWN);
            this.leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM0);
            this.rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM5);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void process(AllBinaryLayerManager allbinaryLayerManager, AnalogLocationInput analogLocationInput) {
        {
            CustomGPoint customGPoint = null;
            customGPoint = analogLocationInput.getCustomGPoint();
            int32 x = customGPoint.getX();
            int32 y = customGPoint.getY();
            int32 leftTrigger = analogLocationInput.getLeftTrigger();
            int32 rightTrigger = analogLocationInput.getRightTrigger();
            if (x < 0) {
                this.inputProcessorArray[this.leftGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.leftGameKeyEvent, x);
            } else if (x > 0) {
                this.inputProcessorArray[this.rightGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.rightGameKeyEvent, x);
            }
            if (y < 0) {
                this.inputProcessorArray[this.downGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.downGameKeyEvent, y);
            } else if (y > 0) {
                this.inputProcessorArray[this.upGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.upGameKeyEvent, y);
            }
            if (leftTrigger > 0) {
                this.inputProcessorArray[this.leftTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.leftTriggerGameKeyEvent, leftTrigger);
            }
            if (rightTrigger > 0) {
                this.inputProcessorArray[this.rightTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.rightTriggerGameKeyEvent, rightTrigger);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int32 getSourceId() {
        return 0;
    }
}

