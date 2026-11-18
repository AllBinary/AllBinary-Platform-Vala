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
// package org.allbinary.game.ag.layer.hud.basic
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.game.graphics.hud.BasicHudFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.math.PrimitiveLongSingleton
// import org.allbinary.logic.math.PrimitiveLongUtil

public class NumberStringHud : BasicHud, PaintableInterface {
    private PrimitiveLongUtil primitiveLongUtil;
    private string prependString;
    private uint16[] PREPEND_STRING;
    private int32 value;
    private int32 max;
    private int32 offset;
    private uint16[] valueString;
    private int32 valueTotalDigits;

    // Java field initializers run after the base constructor
    private void initFieldsNumberStringHud() {
    
    
    
    
    
    this.offset = 0;
    
    this.valueTotalDigits = 0;
    }
    

    public NumberStringHud(string prependString, int32 max, int32 location, int32 direction, int32 bufferZone, BasicColor basicColor) {
        base(location, direction, bufferZone, basicColor);
        this.initFieldsNumberStringHud();
        this.prependString = prependString;
        this.PREPEND_STRING = JString.toCharArray(prependString);
        this.valueString = JArrays.rowUint16(PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS, 0);
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(max + 1);
        this.max = max;
        this.value = 0;
        if (direction == 0) {
            JSystem.fatal(new JException("RuntimeException", BasicHudFactory.getInstance().DIRECTION_EXCEPTION));
        }
    }
    

    public override void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.offset = font.stringWidth(this.prependString) + MyFontProcessor.defaultCharWidth(font);
        base.updateMeasurement(graphics);
    }
    

    public virtual int32 @get() {
        return this.value;
    }
    

    public virtual void add(int32 value) {
        this.@set(this.value + value);
    }
    

    public virtual void @set(int32 value) {
        this.value = value;
        if (this.value > this.max) {
            this.value = 0;
        }
        this.valueString = this.primitiveLongUtil.getCharArray(this.value);
        this.valueTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
    }
    

    public virtual void reduce(int32 value) {
        this.@set(this.value - value);
    }
    

    public virtual void paint(Graphics graphics) {
        base.paintDX(graphics, this.PREPEND_STRING, 0, this.PREPEND_STRING.length, this.valueString, 0, this.valueTotalDigits, this.offset);
    }
    

    public virtual void paintXY(Graphics graphics, int32 x, int32 y) {
        this.myFontProcessor.process(graphics);
        uint16[] charArray = this.PREPEND_STRING;
        int32 len = this.PREPEND_STRING.length;
        uint16[] charArray2 = this.valueString;
        int32 len2 = this.valueTotalDigits;
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawChars(charArray, 0, len, x, y, 0);
        graphics.drawChars(charArray2, 0, len2, x - this.offset, y, 0);
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
}

