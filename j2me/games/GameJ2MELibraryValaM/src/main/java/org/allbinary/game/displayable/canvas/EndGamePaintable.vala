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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.Paintable

public class EndGamePaintable : Paintable {
    private AllBinaryGameCanvas gameCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsEndGamePaintable() {
    
    }
    

    public EndGamePaintable(AllBinaryGameCanvas gameCanvas) {
        base();
        this.initFieldsEndGamePaintable();
        this.gameCanvas = gameCanvas;
    }
    

    public override void paint(Graphics graphics) {
        this.gameCanvas.paintGameOver(graphics);
    }
}

