/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class InitGameProcessor : Processor {
    private AllBinaryGameCanvas gameCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsInitGameProcessor() {
    
    }
    

    public InitGameProcessor(AllBinaryGameCanvas gameCanvas) {
        base();
        this.initFieldsInitGameProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    public override void process() {
        if (ProgressCanvasFactory.getInstance().isInGame()) {
            this.gameCanvas.setProcessGameProcessorInit();
        }
    }
}

