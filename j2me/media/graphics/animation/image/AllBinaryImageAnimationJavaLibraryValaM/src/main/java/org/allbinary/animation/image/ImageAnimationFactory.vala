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
// package org.allbinary.animation.image
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.graphics.opengles.OpenGLUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

public class ImageAnimationFactory : BaseImageAnimationFactory {
    

    public static ImageAnimationFactory createFactory(Image image) {
        return new ImageAnimationFactory(image, image.getWidth(), image.getHeight(), 0, 0, AnimationBehaviorFactory.getInstance());
    }
    

    public ImageAnimationFactory(Image image, int32 width, int32 height, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        base(image, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory);
    }
    

    public override Animation getInstance1(int32 instanceId) {
        Image scaledImage = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        OpenGLUtil openGLUtil = OpenGLUtil.getInstance();
        scaledImage = openGLUtil.addImage(scaledImage);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return new AdjustedImageAnimation(scaledImage, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new ImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
}

