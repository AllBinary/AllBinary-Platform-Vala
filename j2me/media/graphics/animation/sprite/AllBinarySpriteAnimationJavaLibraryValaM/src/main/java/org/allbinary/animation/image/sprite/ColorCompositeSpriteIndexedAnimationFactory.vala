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
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil
// import org.allbinary.logic.math.PrimitiveIntUtil

public class ColorCompositeSpriteIndexedAnimationFactory : BaseImageAnimationFactory, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;
    private BasicColor[] basicColorArray;

    // Java field initializers run after the base constructor
    private void initFieldsColorCompositeSpriteIndexedAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    
    }
    

    public ColorCompositeSpriteIndexedAnimationFactory(Image image, BasicColor[] basicColorArray, int32 width, int32 height, AnimationBehaviorFactory animationBehaviorFactory) {
        base(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.initFieldsColorCompositeSpriteIndexedAnimationFactory();
        this.basicColorArray = basicColorArray;
    }
    

    public override Animation getInstance1(int32 instanceId) {
        Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        return new SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        return this.getInstance1(0);
    }
}

