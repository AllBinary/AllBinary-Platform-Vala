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
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory

public class DemoGameRunnable : GameRunnable {
    public LogUtil logUtil;
    private DemoCanvas demoCanvas;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsDemoGameRunnable() {
    this.logUtil = LogUtil.getInstance();
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    public DemoGameRunnable(DemoCanvas demoCanvas) {
        base();
        this.initFieldsDemoGameRunnable();
        this.demoCanvas = demoCanvas;
    }
    

    public override void run() {
        {
            this.demoCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper.setStartTime());
            this.demoCanvas.processGame();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void processLoopSleep() {
        this.demoCanvas.processLoopSleep();
    }
}

