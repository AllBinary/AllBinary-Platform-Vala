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
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.image.ImageToRotationImageArrayUtil

public class AllBinaryArrayImageRotationAnimationFactory : BaseImageAnimationFactory {
    private Image[] imageArray;
    private int32 angleIncrement;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryArrayImageRotationAnimationFactory() {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    
    }
    

    public static AllBinaryArrayImageRotationAnimationFactory createFactory(Image image, int32 dx, int32 dy) {
        AllBinaryArrayImageRotationAnimationFactory arrayImageRotationAnimationFactory = new AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), ((int32) (AngleFactory.getInstance().TOTAL_ANGLE)) / GameConfigurationCentral.getInstance().getGameControlFidelity(), AnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
    

    public static AllBinaryArrayImageRotationAnimationFactory createFactoryA(Image image, int32 dx, int32 dy, int32 angleIncrement) {
        AllBinaryArrayImageRotationAnimationFactory arrayImageRotationAnimationFactory = new AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
    

    public AllBinaryArrayImageRotationAnimationFactory(Image image, int32 width, int32 height, int32 angleIncrement, AnimationBehaviorFactory animationBehaviorFactory) {
        base(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.initFieldsAllBinaryArrayImageRotationAnimationFactory();
        this.angleIncrement = angleIncrement;
        this.init();
    }
    

    private void init() {
        this.setImageArray(ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), ((int32) (AngleFactory.getInstance().TOTAL_ANGLE))));
    }
    

    private void initDXY(int32 dx, int32 dy) {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
        this.animationFactoryInitializationVisitor.originalDx = dx;
        this.animationFactoryInitializationVisitor.originalDy = dy;
    }
    

    public override Animation getInstance1(int32 instanceId) {
        Image[] scaledImageArray = new Image[this.imageArray.length];
        int32 size = scaledImageArray.length;
        Image image = this.getImage();
        for (int32 index = 0; index < size; index++) {
            scaledImageArray[index] = this.animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        }
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return new AdjustedImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance1(((int16) (this.getAngleIncrement()))), ((int32) (AngleFactory.getInstance().TOTAL_ANGLE)), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new ImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance1(((int16) (this.getAngleIncrement()))), ((int32) (AngleFactory.getInstance().TOTAL_ANGLE)), this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public virtual void setImageArray(Image[] imageArray) {
        this.imageArray = imageArray;
    }
    

    public virtual int32 getAngleIncrement() {
        return this.angleIncrement;
    }
}

