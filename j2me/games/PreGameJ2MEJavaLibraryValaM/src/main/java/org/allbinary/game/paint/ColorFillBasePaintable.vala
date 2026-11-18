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
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorCompositeInterface
// import org.allbinary.graphics.paint.Paintable

public class ColorFillBasePaintable : Paintable, ColorCompositeInterface, BasicColorCompositeSetterInterface {
    public BasicColor basicColor;
    public int32 colorP;

    // Java field initializers run after the base constructor
    private void initFieldsColorFillBasePaintable() {
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.colorP = 0;
    }
    

    public ColorFillBasePaintable(BasicColor basicColor) {
        base();
        this.initFieldsColorFillBasePaintable();
        this.setBasicColorP(basicColor);
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
        this.setColor(this.getBasicColorP().intValue());
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public virtual int32 getColor() {
        return this.colorP;
    }
    

    public virtual void setColor(int32 color) {
        this.colorP = color;
    }
    

    public override void paint(Graphics graphics) {
    }
}

