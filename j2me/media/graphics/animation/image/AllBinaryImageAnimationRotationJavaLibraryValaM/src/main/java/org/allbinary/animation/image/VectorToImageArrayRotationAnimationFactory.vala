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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.VectorAnimation
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.image.AnimationFrameToImageUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.ScaleProperties
// import org.allbinary.media.image.ImageToRotationImageArrayUtil
// import org.allbinary.vector.VectorInfo

public class VectorToImageArrayRotationAnimationFactory : BaseImageAnimationFactory {
    private Image[] imageArray;
    private int32 angleIncrement;

    // Java field initializers run after the base constructor
    private void initFieldsVectorToImageArrayRotationAnimationFactory() {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    this.angleIncrement = 0;
    }
    

    public VectorToImageArrayRotationAnimationFactory(VectorInfo vectorInfo, BasicColor basicColor, AnimationBehaviorFactory animationBehaviorFactory) {
        base(AnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), VectorAnimation.createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory);
        this.initFieldsVectorToImageArrayRotationAnimationFactory();
        this.init();
    }
    

    public virtual void init() {
        AngleFactory angleFactory = AngleFactory.getInstance();
        this.angleIncrement = ((int32) (angleFactory.TOTAL_ANGLE)) / GameConfigurationCentral.getInstance().getGameControlFidelity();
        this.imageArray = ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), ((int32) (angleFactory.TOTAL_ANGLE)));
    }
    

    public override Animation getInstance1(int32 instanceId) {
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return new AdjustedImageArrayRotationAnimation(this.imageArray, AngleInfo.getInstance1(((int16) (this.getAngleIncrement()))), ((int32) (AngleFactory.getInstance().TOTAL_ANGLE)), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return AdjustedImageArrayRotationAnimation.createAnimation(this.imageArray, AngleInfo.getInstance1(((int16) (this.angleIncrement))), ((int32) (AngleFactory.getInstance().TOTAL_ANGLE)), this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public virtual int32 getAngleIncrement() {
        return this.angleIncrement;
    }
    

    public override void setInitialScale(ScaleProperties scaleProperties) {
    }
}

