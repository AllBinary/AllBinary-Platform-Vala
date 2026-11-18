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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.communication.log.LogUtil

//J2MEForJ2ME
public class OwnershipPaintable : Paintable, UpdateMyFontInterface {
    public LogUtil logUtil;
    private DisplayInfoSingleton displayInfo;
    private MyFontProcessor myFontProcessor;
    private string COPYRIGHT;
    private BasicColor basicColor;
    private int32 color;
    private int32 anchor;
    private int32 COPYRIGHT_Y;
    private int32 beginWidth;

    // Java field initializers run after the base constructor
    private void initFieldsOwnershipPaintable() {
    this.logUtil = LogUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.COPYRIGHT = "AllBinary Copyright (c) 2011";
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.color = this.basicColor.intValue();
    this.anchor = Anchor.TOP_LEFT;
    this.COPYRIGHT_Y = 0;
    this.beginWidth = 0;
    }
    

    public static OwnershipPaintable getInstance() {
        return new OwnershipPaintable();
    }
    

    public OwnershipPaintable() {
        base();
        this.initFieldsOwnershipPaintable();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.COPYRIGHT_Y = 2 * font.getHeight();
        this.beginWidth = (font.stringWidth(this.COPYRIGHT) >> 1);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
        this.color = basicColor.intValue();
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.color);
        int32 halfWidth = this.displayInfo.getLastHalfWidth();
        int32 height = this.displayInfo.getLastHeight();
        graphics.drawString(this.COPYRIGHT, halfWidth - this.beginWidth, height - this.COPYRIGHT_Y, this.anchor);
    }
}

