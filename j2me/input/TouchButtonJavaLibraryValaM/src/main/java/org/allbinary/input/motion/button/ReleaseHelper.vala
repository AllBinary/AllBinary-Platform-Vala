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
// import org.allbinary.game.input.event.GameKeyEvent

public class ReleaseHelper : JObject {
    public TouchButtonRecognizer touchButtonRecognizer;

    // Java field initializers run after the base constructor
    private void initFieldsReleaseHelper() {
    
    }
    

    public ReleaseHelper(TouchButtonRecognizer touchButtonRecognizer) {
        base();
        this.initFieldsReleaseHelper();
        this.touchButtonRecognizer = touchButtonRecognizer;
    }
    

    public virtual void release(TouchButtonInput touchButtonInput, int32 deviceId) {
        TouchButtonInput nextTouchButtonInput = null;
        GameKeyEvent gameKeyEvent = null;
        for (int32 index = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1; index >= 0; index--) {
            nextTouchButtonInput = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.@get(index);
            gameKeyEvent = nextTouchButtonInput.getGameKeyEvent();
            this.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index);
        }
    }
}

