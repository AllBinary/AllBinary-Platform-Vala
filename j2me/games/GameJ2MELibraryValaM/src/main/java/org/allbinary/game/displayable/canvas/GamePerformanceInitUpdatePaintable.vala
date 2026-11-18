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
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.InitUpdatePaintable

public class GamePerformanceInitUpdatePaintable : InitUpdatePaintable, UpdateMyFontInterface {
    private int32 halfHeight;
    private int32[] yArray;
    private MyFontProcessor myFontProcessor;
    private uint16[,] baseRefreshHelperCharArray;
    private int32 defaultStringWidth;
    private int32 RED;

    // Java field initializers run after the base constructor
    private void initFieldsGamePerformanceInitUpdatePaintable() {
    this.halfHeight = DisplayInfoSingleton.getInstance().getLastHalfHeight();
    this.yArray = new int32[] {this.halfHeight + 30, this.halfHeight + 30, this.halfHeight + 30 + 15, this.halfHeight + 30 + 15, this.halfHeight + 30 + 30, this.halfHeight + 30 + 30, this.halfHeight + 30 + 45, this.halfHeight + 30 + 45};
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.baseRefreshHelperCharArray = new uint16[0, 0];
    this.defaultStringWidth = 0;
    this.RED = BasicColorFactory.getInstance().RED.intValue();
    }

    public GamePerformanceInitUpdatePaintable() {
        base();
        this.initFieldsGamePerformanceInitUpdatePaintable();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void init() {
    }
    

    public override void update() {
        this.baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().to2DCharArray();
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.RED);
        uint16[] charArray = null;
        uint16[] charArray2 = null;
        int32 size2 = 0;
        int32 size3 = 0;
        int32 size = this.baseRefreshHelperCharArray.length[0] - 2;
        for (int32 index = size; index >= 0; index -= 2) {
            charArray = JArrays.rowUint16(this.baseRefreshHelperCharArray, index);
            charArray2 = JArrays.rowUint16(this.baseRefreshHelperCharArray, index + 1);
            size2 = charArray.length;
            size3 = charArray2.length;
            graphics.drawChars(charArray, 0, size2, 0, this.yArray[index], 0);
            graphics.drawChars(charArray2, 0, size3, size2 * this.defaultStringWidth, this.yArray[index + 1], 0);
        }
    }
}

