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
// package org.allbinary.graphics.draw
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor

public class CanvasDrawLineString : JObject, UpdateMyFontInterface {
    public static CanvasDrawLineString? NULL_CANVAS_DRAW_LINE_STRING;
    private static bool staticSet_NULL_CANVAS_DRAW_LINE_STRING = false;
    public static CanvasDrawLineString staticGet_NULL_CANVAS_DRAW_LINE_STRING() {
        if (!CanvasDrawLineString.staticSet_NULL_CANVAS_DRAW_LINE_STRING) {
            CanvasDrawLineString.staticSet_NULL_CANVAS_DRAW_LINE_STRING = true;
            CanvasDrawLineString.NULL_CANVAS_DRAW_LINE_STRING = new CanvasDrawLineString(0, 0);
        }
        return CanvasDrawLineString.NULL_CANVAS_DRAW_LINE_STRING;
    }
    private DrawStringUtil drawStringUtil;
    private MyFontProcessor myFontProcessor;
    private int32 x;
    private int32 y;
    private int32 fontHeight;

    // Java field initializers run after the base constructor
    private void initFieldsCanvasDrawLineString() {
    this.drawStringUtil = DrawStringUtil.getInstance();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    
    
    this.fontHeight = 0;
    }
    

    public CanvasDrawLineString(int32 x, int32 y) {
        base();
        this.initFieldsCanvasDrawLineString();
        this.x = x;
        this.y = y;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void paint(Graphics graphics, string string, int32 line) {
        this.myFontProcessor.process(graphics);
        this.drawStringUtil.drawCenterString(graphics, string, 0, JString.length(string), this.x, this.y + (line * this.fontHeight));
    }
}

