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
// package org.allbinary.media
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.time.TimeDelayHelper

public class AllBinaryVisualDebugVibration : AllBinaryVibrationME, UpdateMyFontInterface {
    private DisplayInfoSingleton displayInfoSingleton;
    private TimeDelayHelper timeDelayHelper;
    private string VIBRATING;
    private MyFontProcessor myFontProcessor;
    private int32 anchor;
    private int32 width;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryVisualDebugVibration() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.timeDelayHelper = new TimeDelayHelper(Integer.MAX_VALUE);
    this.VIBRATING = "Vibrating";
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.anchor = Anchor.TOP_LEFT;
    this.width = 0;
    }

    public AllBinaryVisualDebugVibration() {
        base();
        this.initFieldsAllBinaryVisualDebugVibration();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.width = font.stringWidth(this.VIBRATING);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void vibrate(int32 duration, int32 type, int32 volume) {
        this.timeDelayHelper.delay = duration;
    }
    

    public virtual void paint(Graphics graphics) {
        if (this.timeDelayHelper.isTimeTNT()) {
            this.timeDelayHelper.delay = Integer.MAX_VALUE;
            this.myFontProcessor.process(graphics);
            graphics.drawString(this.VIBRATING, this.displayInfoSingleton.getLastHalfWidth() - (this.width >> 1), 0, this.anchor);
        }
    }
}

