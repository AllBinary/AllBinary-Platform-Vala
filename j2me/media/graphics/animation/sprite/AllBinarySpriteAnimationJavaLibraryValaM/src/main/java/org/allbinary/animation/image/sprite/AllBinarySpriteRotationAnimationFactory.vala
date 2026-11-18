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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

public class AllBinarySpriteRotationAnimationFactory : BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinarySpriteRotationAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    }
    

    public static AllBinarySpriteRotationAnimationFactory createWHDY(Image image, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        AllBinarySpriteRotationAnimationFactory spriteRotationAnimationFactory = new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.initWH(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    public static AllBinarySpriteRotationAnimationFactory createWH(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory);
    }
    

    public static AllBinarySpriteRotationAnimationFactory createDXY(Image image, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        AllBinarySpriteRotationAnimationFactory spriteRotationAnimationFactory = new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    public static AllBinarySpriteRotationAnimationFactory createDXYQ(Image image, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        AllBinarySpriteRotationAnimationFactory spriteRotationAnimationFactory = new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    public static AllBinarySpriteRotationAnimationFactory createQ(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
    }
    

    public static AllBinarySpriteRotationAnimationFactory createWHF(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
    

    public AllBinarySpriteRotationAnimationFactory(Image image, int32[] sequenceArray, int32 width, int32 height, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        base(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.initFieldsAllBinarySpriteRotationAnimationFactory();
        if (animationBehaviorFactory == AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
    }
    

    public virtual void init(int32 dx, int32 dy) {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    private void initWH(int32 dx, int32 dy) {
        this.init(dx, dy);
        this.animationFactoryInitializationVisitor.dx += -this.animationFactoryInitializationVisitor.width / 5;
        this.animationFactoryInitializationVisitor.dy += -this.animationFactoryInitializationVisitor.height / 5;
    }
    

    public override Animation getInstance1(int32 instanceId) {
        Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return new AllBinaryAdjustedSpriteRotationAnimation(sprite, this.getImage(), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new AllBinarySpriteRotationAnimation(sprite, this.getImage(), this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        return this.getInstance1(0);
    }
}

