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
// package org.allbinary.game.paint
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton

public class ColorFillPaintable : ColorFillBasePaintable {
    public DisplayInfoSingleton displayInfoSingleton;

    // Java field initializers run after the base constructor
    private void initFieldsColorFillPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    }
    

    public ColorFillPaintable(BasicColor basicColor) {
        base(basicColor);
        this.initFieldsColorFillPaintable();
    }
    

    public override void paint(Graphics graphics) {
        graphics.setColor(this.colorP);
        graphics.fillRect(0, 0, this.displayInfoSingleton.getLastWidth(), this.displayInfoSingleton.getLastHeight());
    }
}

