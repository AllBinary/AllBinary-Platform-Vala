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
// import javax.microedition.lcdui.TextField
// import org.allbinary.graphics.form.item.CustomTextBox
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.game.canvas.ABToGBUtil
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.media.ScaleProperties

public class CustomTextBoxIndexedAnimationFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    public LogUtil logUtil;
    public ScaleProperties scaleProperties;
    private int32 maxLength;

    // Java field initializers run after the base constructor
    private void initFieldsCustomTextBoxIndexedAnimationFactory() {
    this.logUtil = LogUtil.getInstance();
    
    
    }
    

    public CustomTextBoxIndexedAnimationFactory(int32 fontSize, int32 maxLength) {
        base();
        this.initFieldsCustomTextBoxIndexedAnimationFactory();
        this.scaleProperties = new ScaleProperties();
        this.scaleProperties.scaleHeight = fontSize;
        this.maxLength = maxLength;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        ABToGBUtil abToGBUtil = ABToGBUtil.getInstance();
        AllBinaryGameCanvas abCanvas = ((AllBinaryGameCanvas) abToGBUtil.abCanvas);
        Font font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.scaleProperties.scaleHeight);
        CustomTextBox customTextBox = new CustomTextBox2(abCanvas.getCustomCommandListener(), StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, this.maxLength, TextField.ANY, font, abCanvas.getLayerManager().getBackgroundBasicColor(), abCanvas.getLayerManager().getForegroundBasicColor());
        return new CustomTextBoxIndexedAnimation(customTextBox);
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
        int32 fontSize = this.scaleProperties.scaleHeight;
        this.scaleProperties = scaleProperties;
        if (this.scaleProperties.scaleHeight < 6) {
            this.scaleProperties.scaleHeight = fontSize;
        }
    }
}

