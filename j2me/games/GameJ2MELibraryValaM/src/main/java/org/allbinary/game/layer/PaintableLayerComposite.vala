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
// package org.allbinary.game.layer
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.layer.Layer

public class PaintableLayerComposite : Paintable {
    private Layer[] paintableArray;

    // Java field initializers run after the base constructor
    private void initFieldsPaintableLayerComposite() {
    
    }
    

    public PaintableLayerComposite(Layer[] paintableArray) {
        base();
        this.initFieldsPaintableLayerComposite();
        this.paintableArray = paintableArray;
    }
    

    public override void paint(Graphics graphics) {
        for (int32 index = this.paintableArray.length; --index >= 0; ) {
            this.paintableArray[index].paint(graphics);
        }
    }
    

    public override void paintThreed(Graphics graphics) {
        PaintableInterface paintableInterface = null;
        for (int32 index = this.paintableArray.length; --index >= 0; ) {
            paintableInterface = ((PaintableInterface) this.paintableArray[index]);
            paintableInterface.paintThreed(graphics);
        }
    }
}

