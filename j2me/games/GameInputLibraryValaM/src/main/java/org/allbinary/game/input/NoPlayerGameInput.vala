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
// package org.allbinary.game.input
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.util.BasicArrayListD

public class NoPlayerGameInput : PlayerGameInput {
    private static NoPlayerGameInput? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static NoPlayerGameInput staticGet_SINGLETON() {
        if (!NoPlayerGameInput.staticSet_SINGLETON) {
            NoPlayerGameInput.staticSet_SINGLETON = true;
            NoPlayerGameInput.SINGLETON = new NoPlayerGameInput();
        }
        return NoPlayerGameInput.SINGLETON;
    }
    

    public static NoPlayerGameInput getInstance() {
        return NoPlayerGameInput.staticGet_SINGLETON();
    }
    

    public NoPlayerGameInput() {
        base(new BasicArrayListD(), new BasicArrayListD(), -1);
    }
    

    public override void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
    }
    

    public override void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
    }
}

