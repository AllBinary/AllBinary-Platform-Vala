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
// package org.allbinary.image
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.image.AnimationFactoryInitializationVisitor
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.image.ImageJ2MEScaleUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

public class AnimationFactoryImageScaleUtil : JObject {
    private static AnimationFactoryImageScaleUtil? instance;
    private static bool staticSet_instance = false;
    private static AnimationFactoryImageScaleUtil staticGet_instance() {
        if (!AnimationFactoryImageScaleUtil.staticSet_instance) {
            AnimationFactoryImageScaleUtil.staticSet_instance = true;
            AnimationFactoryImageScaleUtil.instance = new AnimationFactoryImageScaleUtil();
        }
        return AnimationFactoryImageScaleUtil.instance;
    }
    private ImageJ2MEScaleUtil imageScaleUtil;

    // Java field initializers run after the base constructor
    private void initFieldsAnimationFactoryImageScaleUtil() {
    this.imageScaleUtil = ImageJ2MEScaleUtil.getInstance();
    }

    public AnimationFactoryImageScaleUtil() {
        base();
        this.initFieldsAnimationFactoryImageScaleUtil();
    }
    

    public static AnimationFactoryImageScaleUtil getInstance() {
        return AnimationFactoryImageScaleUtil.staticGet_instance();
    }
    

    public virtual Image createImage(Image image, int32 width, int32 height, int32 scaleWidth, int32 scaleHeight) {
        Image scaledImage = null;
        if (scaleWidth != 0 && scaleHeight != 0) {
            float scaleX = (((float) (scaleWidth))) / (((float) (width)));
            float scaleY = (((float) (scaleHeight))) / (((float) (height)));
            if ((scaleX == 1.0f && scaleY == 1.0f) || (scaleX == 0.0f || scaleY == 0.0f)) {
                scaledImage = image;
            } else {
                int32 scaledWidth = ((int32) JMath.toInt32((scaleX * ((float) (width)))));
                int32 scaledHeight = ((int32) JMath.toInt32((scaleY * ((float) (height)))));
                scaledImage = this.imageScaleUtil.scale(image, scaledWidth, scaledHeight);
            }
        } else {
            scaledImage = image;
        }
        return scaledImage;
    }
    

    public virtual void processAdjust(BaseImageAnimationFactory baseImageAnimationFactory) {
        ScaleProperties scaleProperties = baseImageAnimationFactory.getScalePropertiesP();
        if (scaleProperties.scaleWidth != 0 && scaleProperties.scaleHeight != 0) {
            AnimationFactoryInitializationVisitor animationFactoryInitializationVisitor = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP();
            float scaleX = (((float) (scaleProperties.scaleWidth))) / (((float) (animationFactoryInitializationVisitor.width)));
            float scaleY = (((float) (scaleProperties.scaleHeight))) / (((float) (animationFactoryInitializationVisitor.height)));
            if ((scaleX == 1.0f && scaleY == 1.0f) || (scaleX == 0.0f || scaleY == 0.0f)) {
            } else {
                animationFactoryInitializationVisitor.dx = ((int32) JMath.toInt32((((float) (animationFactoryInitializationVisitor.originalDx)) * scaleX)));
                animationFactoryInitializationVisitor.dy = ((int32) JMath.toInt32((((float) (animationFactoryInitializationVisitor.originalDy)) * scaleY)));
            }
        } else {
        }
    }
}

