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
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.logic.NullUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.image.ImageToRotationImageArrayUtil

//TWB - Adjustments should be done in the resource creation and not at the animation level
public class PooledImageArrayRotationAnimationFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private JObject allBinaryImageRotationAnimationInfo;
    private AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    private void initFieldsPooledImageArrayRotationAnimationFactory() {
    this.allBinaryImageRotationAnimationInfo = NullUtil.getInstance().NULL_OBJECT;
    
    }
    

    public static PooledImageArrayRotationAnimationFactory createFactory(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        int32 totalAngle = ((int32) (AngleFactory.getInstance().TOTAL_ANGLE));
        int32 angleIncrement = (totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity());
        return new PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), -(image.getWidth() >> 2), -(image.getHeight() >> 2), angleIncrement, animationBehaviorFactory);
    }
    

    public static PooledImageArrayRotationAnimationFactory createDXY(Image image, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        int32 totalAngle = ((int32) (AngleFactory.getInstance().TOTAL_ANGLE));
        int32 angleIncrement = (totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity());
        return new PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory);
    }
    

    public PooledImageArrayRotationAnimationFactory(Image image, int32 width, int32 height, int32 dx, int32 dy, int32 angleIncrement, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsPooledImageArrayRotationAnimationFactory();
        this.animationBehaviorFactory = animationBehaviorFactory;
        int32 totalAngle = ((int32) (AngleFactory.getInstance().TOTAL_ANGLE));
        Image[] imageArray = ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle);
        this.allBinaryImageRotationAnimationInfo = new ImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy);
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(this.allBinaryImageRotationAnimationInfo, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

