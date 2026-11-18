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
// package org.allbinary.input.motion
// import org.allbinary.input.motion.button.TouchButtonRecognizer

public class OnlyTouchButtonRecognizer : MotionRecognizer {
    private TouchButtonRecognizer touchButtonRecognizer;
    private bool touchButtonProcessing;

    // Java field initializers run after the base constructor
    private void initFieldsOnlyTouchButtonRecognizer() {
    
    this.touchButtonProcessing = false;
    }
    

    public OnlyTouchButtonRecognizer() {
        base();
        this.initFieldsOnlyTouchButtonRecognizer();
        this.touchButtonRecognizer = new TouchButtonRecognizer();
    }
    

    public override void processStartMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        if (this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing = true;
        }
    }
    

    public override void processEndMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        if (this.touchButtonProcessing) {
            this.touchButtonProcessing = false;
        }
        if (this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
            return;
        }
    }
    

    public override void processDraggedMotionEvent(int32 x, int32 y, int32 deviceId, int32 modifiers) {
        if (this.touchButtonProcessing) {
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
    }
}

