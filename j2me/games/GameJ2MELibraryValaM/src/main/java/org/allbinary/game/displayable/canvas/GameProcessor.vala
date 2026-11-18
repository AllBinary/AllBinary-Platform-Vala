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

public class GameProcessor : Processor {
    private AllBinaryGameCanvas gameCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsGameProcessor() {
    
    }
    

    public GameProcessor(AllBinaryGameCanvas gameCanvas) {
        base();
        this.initFieldsGameProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    public override void process() {
        this.gameCanvas.processPlayingGame();
    }
}

