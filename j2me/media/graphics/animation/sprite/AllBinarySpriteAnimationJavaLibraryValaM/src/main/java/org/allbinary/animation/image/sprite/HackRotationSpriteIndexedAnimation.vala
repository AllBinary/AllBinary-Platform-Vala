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
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

public class HackRotationSpriteIndexedAnimation : RotationAnimation {
    public Sprite sprite;
    private Image image;

    // Java field initializers run after the base constructor
    private void initFieldsHackRotationSpriteIndexedAnimation() {
    
    
    }
    

    public HackRotationSpriteIndexedAnimation(Sprite sprite, Image image, AngleInfo angleInfo, AnimationBehavior animationBehavior) {
        base(angleInfo, CircularIndexUtil.createInstance(360 / ((int32) (angleInfo.getAngleIncrementInfo().getAngleIncrement()))), animationBehavior);
        this.initFieldsHackRotationSpriteIndexedAnimation();
        this.sprite = sprite;
        this.image = image;
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
    }
    

    public virtual void paintFrame(Graphics g, int32 frame, int32 x, int32 y) {
        this.setFrame(frame);
        this.paintXY(g, x, y);
    }
    

    public override void paintXY(Graphics g, int32 x, int32 y) {
        this.sprite.setPosition(x, y);
        this.paint(g);
    }
    

    public virtual void paint(Graphics g) {
        this.sprite.paint(g);
    }
    

    public override void nextRotation() {
        this.sprite.nextFrame();
    }
    

    public override void previousRotation() {
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
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
}

