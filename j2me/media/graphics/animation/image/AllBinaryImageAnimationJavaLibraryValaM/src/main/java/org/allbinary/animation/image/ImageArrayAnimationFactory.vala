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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.media.ScaleProperties

public class ImageArrayAnimationFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private int32 dx;
    private int32 dy;
    private Image[] imageArray;
    private AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    private void initFieldsImageArrayAnimationFactory() {
    this.dx = 0;
    this.dy = 0;
    
    
    }
    

    public ImageArrayAnimationFactory(Image[] imageArray, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsImageArrayAnimationFactory();
        this.imageArray = imageArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.dx = dx;
        this.dy = dy;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        if (this.dx != 0 || this.dy != 0) {
            return new AdjustedImageArrayAnimation(this.imageArray, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new ImageArrayAnimation(this.imageArray, AnimationBehavior.getInstance());
        }
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

