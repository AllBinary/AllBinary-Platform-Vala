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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.ABRunnable

public class DemoGameStartupRunnable : ABRunnable {
    public const int32 TYPE = 4;
    public LogUtil logUtil;
    private DemoCanvas demoCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsDemoGameStartupRunnable() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public DemoGameStartupRunnable(DemoCanvas demoCanvas) {
        base();
        this.initFieldsDemoGameStartupRunnable();
        this.demoCanvas = demoCanvas;
    }
    

    public override void run() {
        {
            this.setRunning(true);
            this.demoCanvas.stopGameDemo();
            this.demoCanvas.create();
            this.demoCanvas.start();
            this.setRunning(false);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override int32 getType() {
        return DemoGameStartupRunnable.TYPE;
    }
}

