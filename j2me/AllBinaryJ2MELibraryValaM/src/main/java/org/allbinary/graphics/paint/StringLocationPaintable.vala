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

public class StringLocationPaintable : LocationPaintable {
    private string value;

    // Java field initializers run after the base constructor
    private void initFieldsStringLocationPaintable() {
    
    }
    

    public StringLocationPaintable(string value) {
        base();
        this.initFieldsStringLocationPaintable();
        this.value = value;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        graphics.drawString(this.value, x, y, 0);
    }
}

