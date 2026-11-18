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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.FontDebugFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class StartIntermissionPaintable : InitUpdatePaintable, UpdateMyFontInterface {
    public FontDebugFactory fontDebugFactory;
    public BasicColorSetUtil basicSetColorUtil;
    public AllBinaryGameCanvas gameCanvas;
    public string[] stringArray;
    public int32 fontSize;
    public Font font;
    public int32[] lastWidth;
    private MyFontProcessor updateMyFontProcessor;
    private MyFontProcessor myFontProcessor;
    private BasicColor basicColor;
    private int32 color;
    public int32[] lineYOffsetArray;
    private bool hasChanged;
    private int32 anchor;
    public int32 fontHeightP;
    private string BEGIN_LEVEL;
    private string EMPTY_STRING;

    // Java field initializers run after the base constructor
    private void initFieldsStartIntermissionPaintable() {
    this.fontDebugFactory = FontDebugFactory.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    
    
    
    
    
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    this.lineYOffsetArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.hasChanged = true;
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeightP = 0;
    this.BEGIN_LEVEL = "Begin Level ";
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public StartIntermissionPaintable(AllBinaryGameCanvas gameCanvas, string[] stringArray, BasicColor basicColor, Font font) {
        base();
        this.initFieldsStartIntermissionPaintable();
        this.gameCanvas = gameCanvas;
        this.stringArray = stringArray;
        this.lastWidth = new int32[this.stringArray.length];
        this.setBasicColorP(basicColor);
        this.color = basicColor.intValue();
        this.fontSize = font.getSize();
        this.font = font;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.fontHeightP = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        Font existingFont = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.color);
        int32 beginWidth = 0;
        for (int32 index = this.lineYOffsetArray.length - 1; index >= 0; index--) {
            if (this.hasChanged) {
                this.lastWidth[index] = (graphics.getFont().stringWidth(this.stringArray[index]) >> 1);
            }
            beginWidth = this.lastWidth[index];
            graphics.drawString(this.stringArray[index], displayInfo.getLastHalfWidth() - beginWidth, displayInfo.getLastHalfHeight() - this.lineYOffsetArray[index], this.anchor);
        }
        this.hasChanged = false;
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    public override void update() {
        int32 level = this.gameCanvas.getLayerManager().getGameInfo().getCurrentLevel();
        this.stringArray[0] = new StringMaker().append(this.BEGIN_LEVEL).appendint(level).toString();
        for (int32 index = this.stringArray.length - 1; index >= 1; index--) {
            this.stringArray[index] = this.EMPTY_STRING;
        }
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
}

