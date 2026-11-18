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
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

public class ImmediateCommandFormInputProcessor : CommandFormInputProcessor {
    private TimeDelayHelper timeHelper;
    public GameCommandCanvas gameCommandCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsImmediateCommandFormInputProcessor() {
    this.timeHelper = new TimeDelayHelper(25);
    
    }
    

    public ImmediateCommandFormInputProcessor(BasicArrayList gameKeyEventList, int32 playerInputId, GameCommandCanvas gameCommandCanvas, ScrollSelectionForm form) {
        base(gameKeyEventList, playerInputId, gameCommandCanvas, form);
        this.initFieldsImmediateCommandFormInputProcessor();
        this.gameCommandCanvas = gameCommandCanvas;
    }
    

    public override void onPressGameKeyEvent(GameKeyEvent gameKeyEvent) {
        {
            base.onPressGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
        {
            base.onDownGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
        {
            base.onUpGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void onMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
        {
            base.onMotionGestureEvent(motionGestureEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

