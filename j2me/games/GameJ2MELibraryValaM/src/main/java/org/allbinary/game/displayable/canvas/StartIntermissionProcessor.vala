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
// import org.allbinary.canvas.Processor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class StartIntermissionProcessor : Processor {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private AllBinaryGameCanvas gameCanvas;
    private int64 WAIT;

    // Java field initializers run after the base constructor
    private void initFieldsStartIntermissionProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    this.WAIT = 5000;
    }
    

    public StartIntermissionProcessor(AllBinaryGameCanvas gameCanvas) {
        base();
        this.initFieldsStartIntermissionProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    public override void process() {
        if (this.gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(this.WAIT)) {
            this.logUtil.putF("Intermission End", this, this.commonStrings.PROCESS);
            this.gameCanvas.getStartIntermissionInterface().setEnabled(false);
        }
    }
}

