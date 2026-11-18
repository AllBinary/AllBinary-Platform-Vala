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
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable

//J2MEForJ2ME
public class AboutPaintable : Paintable, UpdateMyFontInterface {
    private DisplayInfoSingleton displayInfoSingleton;
    private string ABOUT;
    private string[] info;
    private string[] developers;
    private Paintable[] paintableArray;
    private MyFontProcessor myFontProcessor;
    private int32 charHeight;
    private int32 aboutBeginWidth;
    private int32[] infoBeginWidth;
    private int32[] developersBeginWidth;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsAboutPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.ABOUT = CanvasStrings.getInstance().ABOUT;
    
    
    this.paintableArray = new Paintable[] {this};
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.charHeight = 0;
    this.aboutBeginWidth = 0;
    
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public static AboutPaintable getInstance2(string[] info, string[] developers) {
        return new AboutPaintable(info, developers);
    }
    

    public AboutPaintable(string[] info, string[] developers) {
        base();
        this.initFieldsAboutPaintable();
        this.info = info;
        this.infoBeginWidth = new int32[this.info.length];
        this.developers = developers;
        this.developersBeginWidth = new int32[this.developers.length];
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.aboutBeginWidth = (font.stringWidth(this.ABOUT) >> 1);
        int32 infoSize = this.info.length;
        for (int32 index = 0; index < infoSize; index++) {
            this.infoBeginWidth[index] = (font.stringWidth(this.info[index]) >> 1);
        }
        int32 size = this.developers.length;
        for (int32 index = 0; index < size; index++) {
            this.developersBeginWidth[index] = (font.stringWidth(this.developers[index]) >> 1);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual Paintable[] getPaintableArrayInstance() {
        return this.paintableArray;
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        int32 halfWidth = this.displayInfoSingleton.getLastHalfWidth();
        graphics.drawString(this.ABOUT, halfWidth - this.aboutBeginWidth, 2 * this.charHeight, this.anchor);
        int32 infoSize = this.info.length;
        for (int32 index = 0; index < infoSize; index++) {
            graphics.drawString(this.info[index], halfWidth - this.infoBeginWidth[index], (4 + index) * this.charHeight, this.anchor);
        }
        int32 size = this.developers.length;
        for (int32 index = 0; index < size; index++) {
            graphics.drawString(this.developers[index], halfWidth - this.developersBeginWidth[index], (5 + infoSize + index) * this.charHeight, this.anchor);
        }
    }
}

