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
// package org.allbinary.game.ag.layer.hud.basic.time
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.graphics.hud.BasicHud
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.logic.math.PrimitiveLongSingleton

public class TimeHudWidget : BasicHud {
    private string TIME_STRING;
    private uint16[] TIME_CHAR_ARRAY;
    private int32 offset;
    private uint16[] string;
    private int32 totalDigits;
    private HudTimer timer;

    // Java field initializers run after the base constructor
    private void initFieldsTimeHudWidget() {
    this.TIME_STRING = "Time ";
    this.TIME_CHAR_ARRAY = new uint16[] {((uint16) 'T'), ((uint16) 'i'), ((uint16) 'm'), ((uint16) 'e'), ((uint16) ' ')};
    this.offset = 0;
    this.string = PrimitiveLongSingleton.getInstance().ZERO;
    this.totalDigits = 1;
    
    }
    

    public static TimeHudWidget getInstance4(int32 location, int32 direction, BasicColor basicColor, HudTimer timer) {
        return new TimeHudWidget(location, direction, 2, basicColor, timer);
    }
    

    public TimeHudWidget(int32 location, int32 direction, int32 bufferZone, BasicColor basicColor, HudTimer timer) {
        base(location, direction, bufferZone, basicColor);
        this.initFieldsTimeHudWidget();
        this.timer = timer;
        this.@set();
        this.updateMaxHeight = 14;
    }
    

    public override void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        this.offset = font.stringWidth(this.TIME_STRING) + MyFontProcessor.defaultStringWidth(font, 3);
        base.updateMeasurement(graphics);
    }
    

    public virtual void update() {
        this.timer.update();
        this.@set();
    }
    

    private void @set() {
        this.string = this.timer.getTimeChars();
        this.totalDigits = this.timer.getCurrentTotalDigits();
    }
    

    public virtual HudTimer getTimer() {
        return this.timer;
    }
    

    public virtual void paint(Graphics graphics) {
        base.paintDX(graphics, this.TIME_CHAR_ARRAY, 0, this.TIME_CHAR_ARRAY.length, this.string, 0, this.totalDigits, this.offset);
    }
}

