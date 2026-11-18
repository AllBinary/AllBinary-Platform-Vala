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
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.input.motion.gesture.observer.MotionGestureEvent
// import org.allbinary.util.BasicArrayListUtil

public class NoMenuInputProcessor : BasicMenuInputProcessor {
    private static NoMenuInputProcessor? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static NoMenuInputProcessor staticGet_SINGLETON() {
        if (!NoMenuInputProcessor.staticSet_SINGLETON) {
            NoMenuInputProcessor.staticSet_SINGLETON = true;
            NoMenuInputProcessor.SINGLETON = new NoMenuInputProcessor();
        }
        return NoMenuInputProcessor.SINGLETON;
    }
    

    public static NoMenuInputProcessor getInstance() {
        return NoMenuInputProcessor.staticGet_SINGLETON();
    }
    

    public NoMenuInputProcessor() {
        base(BasicArrayListUtil.getInstance().getImmutableInstance(), -1, NullCanvas.NULL_CANVAS);
    }
    

    public override void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
    }
    

    public override void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
    }
    

    public override void onMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
    }
}

