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
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.util.BasicArrayList

public class PopupCommandFormInputProcessor : CommandFormInputProcessor {
    

    public PopupCommandFormInputProcessor(BasicArrayList gameKeyEventList, int32 playerInputId, MyCanvas gameCanvas, ScrollSelectionForm form, PopupMenuInputProcessor popupMenuInputProcessor) {
        base(gameKeyEventList, playerInputId, gameCanvas, form);
    }
    

    public override int32 processInput(int32 key) {
        return base.processInput(key);
    }
    

    public override void processMotionInput(MotionGestureEvent motionGestureEvent) {
        base.processMotionInput(motionGestureEvent);
    }
}

