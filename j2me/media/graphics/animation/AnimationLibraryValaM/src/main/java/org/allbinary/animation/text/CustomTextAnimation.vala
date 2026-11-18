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
// package org.allbinary.animation.text
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.graphics.font.FontDebugFactory
// import org.allbinary.logic.string.StringUtil

public class CustomTextAnimation : TextAnimation, TextInterface {
    public FontDebugFactory fontDebugFactory;
    public int32 fontSize;
    public Font font;
    private string lastText;
    public bool hasChanged;
    private int32 textWidth;

    // Java field initializers run after the base constructor
    private void initFieldsCustomTextAnimation() {
    this.fontDebugFactory = FontDebugFactory.getInstance();
    
    
    this.lastText = StringUtil.getInstance().INIT_STRING;
    this.hasChanged = true;
    this.textWidth = 0;
    }
    

    public CustomTextAnimation(string text, int32 fontSize, AnimationBehavior animationBehavior) {
        base(text, animationBehavior);
        this.initFieldsCustomTextAnimation();
        this.fontSize = fontSize;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, fontSize);
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.myFontProcessor.process(graphics);
        Font existingFont = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        base.paintXYNoUpdate(graphics, x, y);
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    public override void setScale(float scaleX, float scaleY) {
        if (scaleX != scaleY) {
            JSystem.fatal(new JException("RuntimeException", ""));
        }
        this.hasChanged = true;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, ((int32) JMath.toInt32((((float) (this.fontSize)) * scaleX))));
    }
    

    public override void setTextWithOnMeasure(string text, TextChangeListener textChangeListener) {
        base.setTextWithOnMeasure(text, textChangeListener);
    }
    

    public override void setText(string text) {
        if (this.lastText != text) {
            this.hasChanged = true;
            this.lastText = text;
            base.setText(text);
        }
    }
    

    public virtual string getText() {
        return this.lastText;
    }
    

    public override int32 getWidth() {
        if (this.hasChanged) {
            this.textWidth = this.font.stringWidth(this.textArrayP[0]);
            this.hasChanged = false;
        }
        return this.textWidth;
    }
    

    public override int32 getFontHeight() {
        return this.font.getHeight();
    }
}

