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
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.threed.SWTJOGLProcessor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class TextAnimation : IndexedAnimation, UpdateMyFontInterface {
    private MyFontProcessor updateMyFontProcessor;
    public MyFontProcessor myFontProcessor;
    public string[] textArrayP;
    private int32 anchor;
    private int32 fontHeight;
    private int32 offsetY;
    private TextChangeListener textChangeListener;

    // Java field initializers run after the base constructor
    private void initFieldsTextAnimation() {
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeight = 0;
    this.offsetY = 0;
    this.textChangeListener = TextChangeListener.getInstance();
    }
    

    public TextAnimation(string text, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsTextAnimation();
        this.setText(text);
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        int32 adjustedFontHeight = ((int32) JMath.toInt32(-(((double) (this.fontHeight)) * 2.00)));
        this.offsetY = (SWTJOGLProcessor.getInstance().isJOGL() ? adjustedFontHeight : 0);
        this.textChangeListener.onMeasure();
        this.textChangeListener = TextChangeListener.getInstance();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void nextFrame() {
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.myFontProcessor.process(graphics);
        this.paintXYNoUpdate(graphics, x, y);
    }
    

    public virtual void paintXYNoUpdate(Graphics graphics, int32 x, int32 y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        int32 size = this.textArrayP.length;
        for (int32 index = 0; index < size; index++) {
            graphics.drawString(this.textArrayP[index], x, y + this.offsetY + (index * this.fontHeight), this.anchor);
        }
    }
    

    public virtual void setTextWithOnMeasure(string text, TextChangeListener textChangeListener) {
        this.setText(text);
        this.textChangeListener = textChangeListener;
    }
    

    public virtual void setText(string text) {
        BasicArrayList list = new BasicArrayListD();
        if (JString.length(text) > 0) {
            int32 index = 0;
            int32 startIndex = 0;
            int32 endIndex = 0;
            while (index >= 0) {
                startIndex = index;
                index = JString.indexOfChar(text, ((uint16) '\n'), startIndex);
                endIndex = index;
                if (index < 0) {
                    endIndex = JString.length(text);
                }
                list.add(JString.box(JString.substring(text, startIndex, endIndex)));
                if (index < 0) {
                    break;
                }
                index++;
            }
        }
        if (list.size() > 0) {
            string[] textArray = new string[list.size()];
            int32 size = list.size();
            for (int32 index = 0; index < size; index++) {
                textArray[index] = JString.unbox(list.@get(index));
            }
            this.textArrayP = textArray;
        } else {
            this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public virtual string[] getTextArray() {
        return this.textArrayP;
    }
    

    public virtual int32 getFontHeight() {
        return this.fontHeight;
    }
}

