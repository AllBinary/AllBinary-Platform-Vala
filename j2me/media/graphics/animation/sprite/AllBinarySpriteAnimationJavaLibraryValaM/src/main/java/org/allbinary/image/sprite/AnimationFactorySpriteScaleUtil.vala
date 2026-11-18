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
// package org.allbinary.image.sprite
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.game.layer.SpriteFactory
// import org.allbinary.graphics.opengles.OpenGLUtil
// import org.allbinary.image.ImageCache
// import org.allbinary.image.ImageCacheFactory
// import org.allbinary.image.opengles.OpenGLESImageExclusionUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.math.J2SEMath
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.media.image.ImageScaleUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

public class AnimationFactorySpriteScaleUtil : JObject {
    private static AnimationFactorySpriteScaleUtil? instance;
    private static bool staticSet_instance = false;
    private static AnimationFactorySpriteScaleUtil staticGet_instance() {
        if (!AnimationFactorySpriteScaleUtil.staticSet_instance) {
            AnimationFactorySpriteScaleUtil.staticSet_instance = true;
            AnimationFactorySpriteScaleUtil.instance = new AnimationFactorySpriteScaleUtil();
        }
        return AnimationFactorySpriteScaleUtil.instance;
    }
    private ImageCache imageCache;
    private ImageScaleUtil imageScaleUtil;
    private OpenGLUtil openGLUtil;
    private J2SEMath j2seMath;
    private OpenGLESImageExclusionUtil openGLESImageExclusionUtil;

    // Java field initializers run after the base constructor
    private void initFieldsAnimationFactorySpriteScaleUtil() {
    this.imageCache = ImageCacheFactory.getInstance();
    this.imageScaleUtil = ImageScaleUtil.getInstance();
    this.openGLUtil = OpenGLUtil.getInstance();
    this.j2seMath = J2SEMath.getInstance();
    this.openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance();
    }

    public AnimationFactorySpriteScaleUtil() {
        base();
        this.initFieldsAnimationFactorySpriteScaleUtil();
    }
    

    public static AnimationFactorySpriteScaleUtil getInstance() {
        return AnimationFactorySpriteScaleUtil.staticGet_instance();
    }
    

    public virtual Sprite createImage(Image image, int32 width, int32 height, int32 scaleWidth, int32 scaleHeight) {
        SpriteFactory spriteFactory = SpriteFactory.getInstance();
        Sprite sprite = null;
        Image scaledImage = null;
        if (scaleWidth != 0 && scaleHeight != 0) {
            float scaleX = (((float) (scaleWidth))) / (((float) (width)));
            float scaleY = (((float) (scaleHeight))) / (((float) (height)));
            if ((scaleX == 1.0f && scaleY == 1.0f) || (scaleX == 0.0f || scaleY == 0.0f)) {
                scaledImage = this.openGLUtil.addImage(image);
                sprite = spriteFactory.createSprite(scaledImage, width, height);
            } else {
                if (this.openGLESImageExclusionUtil.isCustomScaling(image)) {
                    int32 width2 = this.j2seMath.round(((float) (scaleWidth)) - 0.5f);
                    int32 height2 = this.j2seMath.round(((float) (scaleHeight)) - 0.5f);
                    int32 multiplesOf16Width = width2 / 16;
                    int32 by16Width = multiplesOf16Width * 16;
                    scaleX = (((float) (by16Width))) / ((float) (width));
                    int32 multiplesOf16Height = height2 / 16;
                    int32 by16Height = multiplesOf16Height * 16;
                    scaleY = (((float) (by16Height))) / ((float) (height));
                    if (scaleWidth < width) {
                        scaleX = scaleX * 2.35f;
                    }
                    if (scaleHeight < height) {
                        scaleY = scaleY * 2.35f;
                    }
                }
                scaledImage = this.imageScaleUtil.createImage2(this.imageCache, image, scaleX, 1.0f, scaleY, 1.0f, true);
                sprite = spriteFactory.createSprite(scaledImage, ((int32) JMath.toInt32((((float) (width)) * scaleX))), ((int32) JMath.toInt32((((float) (height)) * scaleY))));
            }
        } else {
            scaledImage = this.openGLUtil.addImage(image);
            sprite = spriteFactory.createSprite(scaledImage, width, height);
        }
        return sprite;
    }
}

