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
// import org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory

public class GameFrameRunnable : GameRunnable {
    public LogUtil logUtil;
    private GameTickDisplayInfoSingleton gameTickDisplayInfoSingleton;
    private AllBinaryGameCanvas allBinaryGameCanvas;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsGameFrameRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance();
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    public GameFrameRunnable(AllBinaryGameCanvas allBinaryGameCanvas) {
        base();
        this.initFieldsGameFrameRunnable();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    public override void run() {
        {
            AllBinaryGameCanvas allBinaryGameCanvas = this.allBinaryGameCanvas;
            allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper.setStartTime());
            this.gameTickDisplayInfoSingleton.update();
            allBinaryGameCanvas.processGame();
            if (!allBinaryGameCanvas.isRunning() || allBinaryGameCanvas.isPaused()) {
                allBinaryGameCanvas.notifyDonePainting();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

