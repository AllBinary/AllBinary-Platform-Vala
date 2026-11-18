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
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.graphics.paint.Paintable

public class BasicPaintablesCanvas : GameCommandCanvas {
    private Paintable[] paintableArray;
    private ColorFillBasePaintable colorFillPaintable;

    // Java field initializers run after the base constructor
    private void initFieldsBasicPaintablesCanvas() {
    
    
    }
    

    public BasicPaintablesCanvas(CommandListener cmdListener, string name, AllBinaryGameLayerManager allBinaryGameLayerManager, Paintable[] paintableArray) {
        base(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsBasicPaintablesCanvas();
        this.paintableArray = paintableArray;
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    public override void paint(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        graphics.setColor(this.foregroundColor);
        for (int32 index = this.paintableArray.length - 1; index >= 0; index--) {
            this.paintableArray[index].paint(graphics);
        }
        base.paint(graphics);
    }
}

