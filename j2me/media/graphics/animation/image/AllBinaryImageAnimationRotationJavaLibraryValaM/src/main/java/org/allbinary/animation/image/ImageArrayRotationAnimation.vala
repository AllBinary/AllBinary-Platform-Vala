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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.math.AngleInfo

public class ImageArrayRotationAnimation : ImageArrayBaseRotationAnimation {
    private int32 expectedTotalFrames;

    // Java field initializers run after the base constructor
    private void initFieldsImageArrayRotationAnimation() {
    this.expectedTotalFrames = 0;
    }
    

    public static ImageArrayRotationAnimation createAnimation(JObject anyType, AnimationBehavior animationBehavior) {
        ImageArrayRotationAnimationInfo imageRotationAnimationInfo = ((ImageArrayRotationAnimationInfo) anyType);
        return new ImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior);
    }
    

    public ImageArrayRotationAnimation(Image[] imageArray, AngleInfo angleInfo, int32 totalAngle, AnimationBehavior animationBehavior) {
        base(imageArray, angleInfo, animationBehavior);
        this.initFieldsImageArrayRotationAnimation();
        this.initImageArray(imageArray, angleInfo, totalAngle);
    }
    

    private void initImageArray(Image[] imageArray, AngleInfo angleInfo, int32 totalAngle) {
        this.expectedTotalFrames = totalAngle / ((int32) (this.angleInfo.getAngleIncrementInfo().getAngleIncrement()));
        this.angleInfo.adjustAngle(0);
        if (this.expectedTotalFrames != this.getSize()) {
            JSystem.fatal(new JException("Exception", "Wrong Number of Frames"));
        }
    }
    

    public override void setImageArray(Image[] imageArray) {
        base.setImageArray(imageArray);
        this.angleInfo.adjustAngle(0);
    }
}

