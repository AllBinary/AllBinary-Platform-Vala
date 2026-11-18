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
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

public class GameRunnable : JObject, Runnable {
    public int32 WAIT;
    public int32 FAST;
    public int64 waitInMillis;

    // Java field initializers run after the base constructor
    private void initFieldsGameRunnable() {
    this.WAIT = 240;
    this.FAST = 60;
    this.waitInMillis = ((int64) (this.WAIT));
    }
    

    public GameRunnable() {
        base();
        this.initFieldsGameRunnable();
    }
    

    public virtual void run() {
        DisplayInfoSingleton.getInstance().process();
    }
    

    public virtual void processLoopSleep() {
        Thread.sleep(this.waitInMillis);
    }
}

