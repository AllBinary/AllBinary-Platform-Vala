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
// import javax.microedition.lcdui.Command
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.form.CommandCurrentSelectionForm
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.input.motion.gesture.MotionGestureInput
// import org.allbinary.input.motion.gesture.TouchMotionGestureFactory
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.audio.PrimaryPlayerQueueFactory
// import org.allbinary.media.audio.SelectSound
// import org.allbinary.thread.PrimaryThreadPool
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

//In general allow scrolling of the menu and selection the center item
public class CommandFormInputProcessor : BasicMenuInputProcessor {
    private int32 MOTION_GESTURE_SOURCE_ID;
    private int32 CLICK_DELAY;
    private TimeDelayHelper clickTimeHelper;
    private int32 DOUBLE_CLICK_DELAY;
    private TimeDelayHelper doubleClickTimeHelper;
    public bool isSingleKeyProcessing;
    private ScrollSelectionForm form;
    private bool hasPressed;
    private string PROCESS_COMMAND;
    private string NAME_LABEL;

    // Java field initializers run after the base constructor
    private void initFieldsCommandFormInputProcessor() {
    this.MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID;
    this.CLICK_DELAY = 150;
    this.clickTimeHelper = new TimeDelayHelper(this.CLICK_DELAY);
    this.DOUBLE_CLICK_DELAY = 1200;
    this.doubleClickTimeHelper = new TimeDelayHelper(this.DOUBLE_CLICK_DELAY);
    this.isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing();
    
    this.hasPressed = false;
    this.PROCESS_COMMAND = "processCommand";
    this.NAME_LABEL = " ScrollSelectionForm: ";
    }
    

    public CommandFormInputProcessor(BasicArrayList gameKeyEventList, int32 playerInputId, MyCanvas gameCanvas, ScrollSelectionForm form) {
        base(gameKeyEventList, playerInputId, gameCanvas);
        this.initFieldsCommandFormInputProcessor();
        this.form = form;
    }
    

    public virtual int32 processInput(int32 key) {
        if (key == Canvas.LEFT || key == Canvas.RIGHT || key == Canvas.UP || key == Canvas.DOWN) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
            this.form.processInputKey(key);
            return 1;
        } else if (key == Canvas.FIRE) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
            return this.processCommand();
        }
        return 0;
    }
    

    private int32 processCommand() {
        CommandCurrentSelectionForm commandCurrentSelectionForm = ((CommandCurrentSelectionForm) this.form);
        Command command = commandCurrentSelectionForm.getSelectedCommand();
        this.logUtil.putF(command.toString(), this, this.PROCESS_COMMAND);
        Features features = Features.getInstance();
        OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (SWTUtil.isSWT && features.isFeature(openGLFeatureFactory.OPENGL) && command != GameCommandsFactory.getInstance().EXIT_COMMAND) {
            new CommandRunnable(this, command).run();
        } else {
            PrimaryThreadPool.getInstance().runTask(new CommandRunnable(this, command));
        }
        if (command == GameCommandsFactory.getInstance().QUIT_COMMAND) {
            return -1;
        } else {
            return 1;
        }
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
                key = gameKeyEvent.getKey();
                if (gameKeyEvent.getSourceId() != this.MOTION_GESTURE_SOURCE_ID) {
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
        TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        MotionGestureInput motionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
            GPoint point = motionGestureEvent.getCurrentPoint();
            if (this.form.isInForm(point)) {
                int32 index = this.form.getSelectedIndexForPoint(point);
                if (index != -1) {
                    PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
                    if (index == this.form.getSelectedIndex()) {
                        if (this.clickTimeHelper.isTimeTNT()) {
                            this.processCommand();
                        }
                    } else {
                        this.form.setSelectedIndex(index);
                    }
                } else {
                }
            }
            if (this.hasPressed) {
                if (!this.doubleClickTimeHelper.isTimeTNT()) {
                    this.logUtil.putF("Double Press", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
                    this.processCommand();
                }
                this.doubleClickTimeHelper.delay = this.DOUBLE_CLICK_DELAY;
                this.doubleClickTimeHelper.setStartTimeTNT();
            }
            this.hasPressed = false;
        } else if (motionGestureInput == touchMotionGestureFactory.PRESSED) {
            this.doubleClickTimeHelper.delay = 0;
            this.hasPressed = true;
        }
    }
    

    public override string toString() {
        return new StringMaker().append(base.toString()).append(this.NAME_LABEL).append(this.form.toString()).toString();
    }
}

