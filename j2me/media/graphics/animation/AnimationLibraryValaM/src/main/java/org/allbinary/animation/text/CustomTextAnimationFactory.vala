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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.media.ScaleProperties

public class CustomTextAnimationFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    public LogUtil logUtil;
    private AnimationBehaviorFactory animationBehaviorFactory;
    public BasicColor basicColor;
    private string text;
    private int32 initScaleHeight;
    public int32 dx;
    public int32 dy;
    public Font font;
    public ScaleProperties scaleProperties;

    // Java field initializers run after the base constructor
    private void initFieldsCustomTextAnimationFactory() {
    this.logUtil = LogUtil.getInstance();
    
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    
    this.dx = 0;
    this.dy = 0;
    
    
    }
    

    public static CustomTextAnimationFactory createDXY(string text, int32 fontSize, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        CustomTextAnimationFactory customTextAnimationFactory = new CustomTextAnimationFactory(text, fontSize, animationBehaviorFactory);
        customTextAnimationFactory.dx = dx;
        customTextAnimationFactory.dy = dy;
        return customTextAnimationFactory;
    }
    

    public CustomTextAnimationFactory(string text, int32 fontSize, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsCustomTextAnimationFactory();
        this.scaleProperties = new ScaleProperties();
        this.text = text;
        this.scaleProperties.scaleHeight = fontSize - (fontSize / 4);
        this.initScaleHeight = this.scaleProperties.scaleHeight;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.initScaleHeight);
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        CustomTextAnimation customTextAnimation = null;
        if (this.dx != 0 || this.dy != 0) {
            customTextAnimation = new AdjustCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            customTextAnimation = new CustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.animationBehaviorFactory.getOrCreateInstance());
        }
        customTextAnimation.setBasicColorP(this.basicColor);
        return customTextAnimation;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
    

    public virtual int32 getWidth() {
        return this.font.stringWidth(this.text);
    }
    

    public virtual int32 getHeight() {
        return this.font.getHeight();
    }
}

