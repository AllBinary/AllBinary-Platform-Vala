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
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorCompositeInterface
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels

public class SpriteIndexedAnimation : IndexedAnimation, ColorCompositeInterface, BasicColorCompositeSetterInterface {
    public Sprite sprite;
    public Image image;
    private BasicColor[] basicColorArray;

    // Java field initializers run after the base constructor
    private void initFieldsSpriteIndexedAnimation() {
    
    
    
    }
    

    public SpriteIndexedAnimation(Sprite sprite, Image image, BasicColor[] basicColorArray, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsSpriteIndexedAnimation();
        this.sprite = sprite;
        this.image = image;
        this.basicColorArray = basicColorArray;
        if (this.basicColorArray.length != 0 && this.getSize() != this.basicColorArray.length) {
            JSystem.fatal(new JException("Exception", new StringMaker().append(CommonLabels.getInstance().TOTAL_LABEL).appendint(this.getSize()).append("!=").appendint(this.basicColorArray.length).toString()));
        }
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        for (int32 index = 0; index < this.basicColorArray.length; index++) {
            if (basicColor == this.basicColorArray[index]) {
                this.setFrame(index);
                break;
            }
        }
    }
    

    public override BasicColor getBasicColorP() {
        if (this.basicColorArray.length < this.getFrame()) {
            return this.basicColorArray[this.getFrame()];
        } else {
            return BasicColorFactory.getInstance().WHITE;
        }
    }
    

    public virtual void paintFrame(Graphics graphics, int32 frame, int32 x, int32 y) {
        this.setFrame(frame);
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    public virtual void paint(Graphics graphics) {
        this.sprite.paint(graphics);
    }
    

    public override void nextFrame() {
        this.sprite.nextFrame();
    }
    

    public override void previousFrame() {
        this.sprite.prevFrame();
    }
    

    public override int32 getSize() {
        return this.sprite.getRawFrameCount();
    }
    

    public override void setFrame(int32 frame) {
        this.sprite.setFrame(frame);
    }
    

    public override int32 getFrame() {
        return this.sprite.getFrame();
    }
    

    public override bool isLastFrame() {
        if (this.sprite.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual int32 getLastFrame() {
        return this.getSize();
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public virtual void close() {
    }
    

    public virtual void finalize() {
    }
}

