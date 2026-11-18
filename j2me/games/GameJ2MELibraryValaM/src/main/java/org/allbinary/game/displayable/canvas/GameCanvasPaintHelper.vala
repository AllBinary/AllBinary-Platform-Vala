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
// import org.allbinary.graphics.paint.ProcessPaintable

public class GameCanvasPaintHelper : ProcessPaintable {
    private AllBinaryGameCanvas gameCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsGameCanvasPaintHelper() {
    
    }
    

    public GameCanvasPaintHelper(AllBinaryGameCanvas gameCanvas) {
        base();
        this.initFieldsGameCanvasPaintHelper();
        this.gameCanvas = gameCanvas;
    }
    

    public override void process() {
    }
    

    public override void paint(Graphics graphics) {
        this.gameCanvas.draw(graphics);
    }
}

