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
// package org.allbinary.game.paint.help
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

public class HelpPaintable : Paintable, UpdateMyFontInterface {
    public DisplayInfoSingleton displayInfo;
    public MyFontProcessor updateMyFontProcessor;
    public MyFontProcessor myFontProcessor;
    public int32 anchor;
    public string title;
    public string[] inputInfo;
    public BasicColor basicColor;
    public int32 titleBeginWidth;
    private int32[] beginWidthArray;
    private int32 charHeight;

    // Java field initializers run after the base constructor
    private void initFieldsHelpPaintable() {
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.anchor = Anchor.TOP_LEFT;
    
    this.inputInfo = StringUtil.getInstance().getArrayInstance();
    
    this.titleBeginWidth = 0;
    this.beginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.charHeight = 0;
    }
    

    public HelpPaintable(string title, BasicColor backgroundBasicColor, BasicColor basicColor) {
        base();
        this.initFieldsHelpPaintable();
        this.title = title;
        this.basicColor = basicColor;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.titleBeginWidth = (font.stringWidth(this.title) >> 1);
        this.charHeight = font.getHeight();
        int32 size = this.inputInfo.length;
        for (int32 index = 0; index < size; index++) {
            this.beginWidthArray[index] = (font.stringWidth(this.inputInfo[index]) >> 1);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void setInputInfoP(string[] inputInfo) {
        this.inputInfo = inputInfo;
        this.beginWidthArray = new int32[this.inputInfo.length];
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        int32 halfWidth = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, halfWidth - this.titleBeginWidth, this.charHeight, this.anchor);
        int32 size = this.inputInfo.length;
        for (int32 index = 0; index < size; index++) {
            graphics.drawString(this.inputInfo[index], halfWidth - this.beginWidthArray[index], (index + 3) * this.charHeight, this.anchor);
        }
    }
}

