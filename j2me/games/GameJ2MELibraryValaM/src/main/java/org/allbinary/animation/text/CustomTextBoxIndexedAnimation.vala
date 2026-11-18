/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.game.input.event.RawKeyEventListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.form.item.CustomTextBox
// import org.allbinary.logic.string.StringUtil

public class CustomTextBoxIndexedAnimation : IndexedAnimation, RawKeyEventListener, UpdateMyFontInterface, TextInterface {
    private CustomTextBox customTextBox;
    private string lastText;
    public bool hasChanged;
    private TextChangeListener textChangeListener;

    // Java field initializers run after the base constructor
    private void initFieldsCustomTextBoxIndexedAnimation() {
    
    this.lastText = StringUtil.getInstance().INIT_STRING;
    this.hasChanged = true;
    this.textChangeListener = TextChangeListener.getInstance();
    }
    

    public CustomTextBoxIndexedAnimation(CustomTextBox customTextBox) {
        base(AnimationBehavior.getInstance());
        this.initFieldsCustomTextBoxIndexedAnimation();
        this.customTextBox = customTextBox;
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        this.customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor);
    }
    

    public override void setBackgroundBasicColorP(BasicColor basicColor) {
        this.customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor);
    }
    

    public virtual void setTextWithOnMeasure(string text, TextChangeListener textChangeListener) {
        this.setText(text);
        this.textChangeListener = textChangeListener;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        graphics.getFont();
        this.textChangeListener.onMeasure();
        this.textChangeListener = TextChangeListener.getInstance();
    }
    

    public virtual void setText(string text) {
        if (this.lastText != text) {
            this.hasChanged = true;
            this.lastText = text;
            this.customTextBox.getTextFieldItem().setString(text);
        }
    }
    

    public virtual string getText() {
        return this.customTextBox.getTextFieldItem().getString();
    }
    

    public virtual void onEventRaw(int32 keyCode, int32 deviceId, bool repeated) {
        this.customTextBox.onEventRaw(keyCode, deviceId, repeated);
    }
    

    public virtual int32 getFontHeight() {
        return this.customTextBox.getTextFieldItem().getFontHeight();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.customTextBox.paintXY(graphics, x, y);
    }
    

    public override void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
    }
    

    public override int32 getWidth() {
        return base.getWidth();
    }
}

