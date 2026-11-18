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
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.game.Sprite
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.graphics.Anchor

public class LeftToRightImageAnimation : ImageSegmentAnimation {
    private int32 currentWidth;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsLeftToRightImageAnimation() {
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public LeftToRightImageAnimation(Image image, int32[] sequenceArray, AnimationBehavior animationBehavior) {
        base(image, sequenceArray, animationBehavior);
        this.initFieldsLeftToRightImageAnimation();
        this.currentWidth = 0;
        if (this.getSequence()[0] == -1) {
            this.setFrame(this.getSize() - 1);
        }
    }
    

    public override void nextFrame() {
        if (this.getSequence()[0] == -1) {
            base.previousFrame();
        } else {
            base.nextFrame();
        }
        this.update();
    }
    

    public override void previousFrame() {
        if (this.getSequence()[0] == -1) {
            base.nextFrame();
        } else {
            base.previousFrame();
        }
        this.update();
    }
    

    public override void setFrame(int32 index) {
        base.setFrame(index);
        this.update();
    }
    

    private void update() {
        this.currentWidth = this.getDrawWidth() * this.getFrame() / this.getSize();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.currentWidth, this.getDrawHeight(), Sprite.TRANS_NONE, x, y, this.anchor);
    }
}

