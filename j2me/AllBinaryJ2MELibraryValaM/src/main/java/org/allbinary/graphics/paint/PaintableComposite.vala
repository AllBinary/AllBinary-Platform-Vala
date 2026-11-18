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
// package org.allbinary.graphics.paint
// import javax.microedition.lcdui.Graphics

public class PaintableComposite : Paintable {
    private PaintableInterface[] paintableArray;

    // Java field initializers run after the base constructor
    private void initFieldsPaintableComposite() {
    
    }
    

    public PaintableComposite(PaintableInterface[] paintableArray) {
        base();
        this.initFieldsPaintableComposite();
        this.paintableArray = paintableArray;
    }
    

    public override void paint(Graphics graphics) {
        for (int32 index = this.paintableArray.length - 1; index >= 0; index--) {
            this.paintableArray[index].paint(graphics);
        }
    }
    

    public override void paintThreed(Graphics graphics) {
        for (int32 index = this.paintableArray.length - 1; index >= 0; index--) {
            this.paintableArray[index].paintThreed(graphics);
        }
    }
}

