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
// package org.allbinary.animation.image
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory

public class TopToBottomImageAnimationFactory : BaseImageAnimationFactory {
    

    public TopToBottomImageAnimationFactory(Image image, int32[] sequenceArray, AnimationBehaviorFactory animationBehaviorFactory) {
        base(image, sequenceArray, image.getWidth(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
    

    public override Animation getInstance1(int32 instanceId) {
        Image scaledImage = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        return new TopToBottomImageAnimation(scaledImage, this.getSequenceArray(), this.animationBehaviorFactory.getOrCreateInstance());
    }
}

