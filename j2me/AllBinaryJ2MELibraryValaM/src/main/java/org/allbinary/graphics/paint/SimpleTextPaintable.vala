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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor

public class SimpleTextPaintable : Paintable, UpdateMyFontInterface {
    private DisplayInfoSingleton displayInfoSingleton;
    private MyFontProcessor updateMyFontProcessor;
    private MyFontProcessor myFontProcessor;
    private string text;
    private BasicColor basicColor;
    private int32 topScoresWidth;
    private int32 fontHeight;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsSimpleTextPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    
    
    this.topScoresWidth = 0;
    this.fontHeight = 0;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public SimpleTextPaintable(string text, BasicColor basicColor) {
        base();
        this.initFieldsSimpleTextPaintable();
        this.text = text;
        this.basicColor = basicColor;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.topScoresWidth = (font.stringWidth(this.text) >> 1);
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        int32 width = this.displayInfoSingleton.getLast()[this.displayInfoSingleton.WIDTH];
        graphics.setColor(this.getBasicColorP().intValue());
        graphics.drawString(this.text, (width >> 1) - this.topScoresWidth, this.fontHeight, this.anchor);
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    private BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public virtual void setText(string text) {
        this.text = text;
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public virtual string getText() {
        return this.text;
    }
}

