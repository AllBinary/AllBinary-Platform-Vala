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
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class RunnableCanvasSingleThreadStartRunnable : GameRunnable {
    public LogUtil logUtil;
    private RunnableCanvas runnableCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsRunnableCanvasSingleThreadStartRunnable() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    public RunnableCanvasSingleThreadStartRunnable(RunnableCanvas demoCanvas) {
        base();
        this.initFieldsRunnableCanvasSingleThreadStartRunnable();
        this.runnableCanvas = demoCanvas;
    }
    

    public override void run() {
        {
            this.runnableCanvas.run();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void processLoopSleep() {
        this.runnableCanvas.processLoopSleep();
    }
}

