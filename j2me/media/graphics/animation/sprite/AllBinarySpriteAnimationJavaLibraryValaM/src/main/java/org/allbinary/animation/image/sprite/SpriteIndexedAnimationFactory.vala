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
// import org.allbinary.AndroidUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehaviorFactory
// import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

public class SpriteIndexedAnimationFactory : BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;
    private BasicColor[] basicColorArray;

    // Java field initializers run after the base constructor
    private void initFieldsSpriteIndexedAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    this.basicColorArray = BasicColorUtil.getInstance().ZERO_ARRAY;
    }
    

    public static SpriteIndexedAnimationFactory createCWHDXY(Image image, BasicColor[] basicColorArray, int32 width, int32 height, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        return new SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory);
    }
    

    public static SpriteIndexedAnimationFactory createCWH(Image image, BasicColor[] basicColorArray, int32 width, int32 height, AnimationBehaviorFactory animationBehaviorFactory) {
        SpriteIndexedAnimationFactory spriteIndexedAnimationFactory = new SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        spriteIndexedAnimationFactory.initHWH();
        return spriteIndexedAnimationFactory;
    }
    

    public static SpriteIndexedAnimationFactory createWH(Image image, int32 width, int32 height, AnimationBehaviorFactory animationBehaviorFactory) {
        return new SpriteIndexedAnimationFactory(image, BasicColorUtil.getInstance().ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
    

    public SpriteIndexedAnimationFactory(Image image, BasicColor[] basicColorArray, int32[] sequenceArray, int32 width, int32 height, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        base(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.initFieldsSpriteIndexedAnimationFactory();
        this.basicColorArray = basicColorArray;
    }
    

    private void initHWH() {
        this.animationFactoryInitializationVisitor.dx = -(this.animationFactoryInitializationVisitor.width >> 2);
        this.animationFactoryInitializationVisitor.dy = -(this.animationFactoryInitializationVisitor.height >> 2);
        if (AndroidUtil.isAndroid()) {
            this.animationFactoryInitializationVisitor.dx += 3;
        }
    }
    

    public override Animation getInstance1(int32 instanceId) {
        Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return new AdjustedSpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        return this.getInstance1(0);
    }
}

