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
// import org.allbinary.animation.image.BaseImageAnimationFactory
// import org.allbinary.graphics.color.BasicColorUtil
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

public class OneRowSpriteIndexedAnimationFactory : BaseImageAnimationFactory {
    private AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;

    // Java field initializers run after the base constructor
    private void initFieldsOneRowSpriteIndexedAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    }
    

    public static OneRowSpriteIndexedAnimationFactory createFactoryDX(Image image, int32 dx, AnimationBehaviorFactory animationBehaviorFactory) {
        OneRowSpriteIndexedAnimationFactory oneRowSpriteIndexedAnimationFactory = new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.initW(dx);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    public static OneRowSpriteIndexedAnimationFactory createFactoryDXY(Image image, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        OneRowSpriteIndexedAnimationFactory oneRowSpriteIndexedAnimationFactory = new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.init(dx, dy);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    public static OneRowSpriteIndexedAnimationFactory createFactoryWH(Image image, int32 width, int32 height, AnimationBehaviorFactory animationBehaviorFactory) {
        return new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
    

    public static OneRowSpriteIndexedAnimationFactory createFactory(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
    

    public OneRowSpriteIndexedAnimationFactory(Image image, int32[] sequenceArray, int32 width, int32 height, int32 dx, int32 dy, AnimationBehaviorFactory animationBehaviorFactory) {
        base(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.initFieldsOneRowSpriteIndexedAnimationFactory();
    }
    

    public virtual void init(int32 dx, int32 dy) {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    public virtual void initW(int32 dx) {
        this.init(dx, 0);
        this.animationFactoryInitializationVisitor.dx += -(this.animationFactoryInitializationVisitor.width >> 2);
    }
    

    public override Animation getInstance1(int32 instanceId) {
        Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return new AdjustedSpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new SpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
}

