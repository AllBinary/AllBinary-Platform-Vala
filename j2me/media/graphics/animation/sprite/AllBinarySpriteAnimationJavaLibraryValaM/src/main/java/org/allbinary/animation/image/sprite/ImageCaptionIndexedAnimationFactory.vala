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
// package org.allbinary.animation.image.sprite
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import javax.microedition.media.Player
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.caption.CaptionIndexedAnimation
// import org.allbinary.animation.image.ImageAnimation
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.image.AnimationFactoryImageScaleUtil
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.audio.Sound

public class ImageCaptionIndexedAnimationFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    public AnimationFactoryImageScaleUtil animationFactoryImageScaleUtil;
    private AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;
    private Image captionImage;
    private Image spriteMovieImage;
    private int32 frameWidth;
    private int32 frameHeight;
    private int32 captionDx;
    private int32 captionDy;
    private int32 dx;
    private int32 dy;
    private int32 time;
    private Sound soundInterface;
    public ScaleProperties scaleProperties;
    private AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    private void initFieldsImageCaptionIndexedAnimationFactory() {
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance();
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    this.scaleProperties = ScaleProperties.instance;
    
    }
    

    public ImageCaptionIndexedAnimationFactory(Image captionImage, Image spriteMovieImage, Sound soundInterface, int32 frameWidth, int32 frameHeight, int32 captionDx, int32 captionDy, int32 dx, int32 dy, int32 time, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsImageCaptionIndexedAnimationFactory();
        if (animationBehaviorFactory == AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
        this.captionImage = captionImage;
        this.spriteMovieImage = spriteMovieImage;
        this.frameWidth = frameWidth;
        this.frameHeight = frameHeight;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.soundInterface = soundInterface;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        Image scaledImage = this.animationFactoryImageScaleUtil.createImage(this.captionImage, this.captionImage.getWidth(), this.captionImage.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        Animation animationInterface = new ImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance());
        Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.spriteMovieImage, this.frameWidth, this.frameHeight, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        IndexedAnimation movieIndexedAnimationInterface = new SpriteIndexedAnimation(sprite, this.spriteMovieImage, BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        Player player = this.soundInterface.getPlayerP();
        if (player == null) {
            JSystem.fatal(new JException("Exception", "Sound Was not Initialized"));
        }
        return new CaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, this.captionDx, this.captionDy, this.dx, this.dy, this.time, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
        this.scaleProperties = scaleProperties;
    }
}

