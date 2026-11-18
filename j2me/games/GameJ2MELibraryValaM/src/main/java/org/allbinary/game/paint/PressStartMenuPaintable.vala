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
// import org.allbinary.AppletUtil
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.input.motion.button.TouchScreenFactory
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.time.TimeDelayHelper

public class PressStartMenuPaintable : Paintable, UpdateMyFontInterface {
    private DisplayInfoSingleton displayInfo;
    private string PRESS_START;
    private string KEY_START;
    private string MENU_START;
    private MyFontProcessor myFontProcessor;
    private string startString;
    private TimeDelayHelper timeDelayHelper;
    private bool flash;
    private int32 anchor;
    private int32 beginWidth;
    private int32 line;

    // Java field initializers run after the base constructor
    private void initFieldsPressStartMenuPaintable() {
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.PRESS_START = "Press Screen To Start";
    this.KEY_START = "Press or Click F2 To Begin";
    this.MENU_START = "Press Start From The Menu To Begin";
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.startString = StringUtil.getInstance().EMPTY_STRING;
    this.timeDelayHelper = new TimeDelayHelper(1100);
    this.flash = false;
    this.anchor = Anchor.TOP_LEFT;
    this.beginWidth = 0;
    this.line = 0;
    }
    

    public PressStartMenuPaintable() {
        base();
        this.initFieldsPressStartMenuPaintable();
        if (TouchScreenFactory.getInstance().isTouch()) {
            this.startString = this.PRESS_START;
        } else if (AppletUtil.isAppletLoader(this)) {
            this.startString = this.KEY_START;
        } else {
            this.startString = this.MENU_START;
        }
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.beginWidth = (graphics.getFont().stringWidth(this.startString) >> 1);
        this.line = (4 * MyFontProcessor.defaultCharWidth(font)) + (font.getHeight() >> 1);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void paint(Graphics graphics) {
        if (this.timeDelayHelper.isTimeTNT()) {
            if (this.isFlash()) {
                this.setFlash(false);
            } else {
                this.setFlash(true);
            }
        }
        if (this.isFlash()) {
            this.myFontProcessor.process(graphics);
            graphics.drawString(this.startString, this.displayInfo.getLastHalfWidth() - this.beginWidth, this.displayInfo.getLastHeight() - this.line, this.anchor);
        }
    }
    

    private void setFlash(bool flash) {
        this.flash = flash;
    }
    

    private bool isFlash() {
        return this.flash;
    }
}

