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
// import org.allbinary.logic.math.PrimitiveIntUtil

public class BottomToTopImageAnimation : ImageSegmentAnimation {
    private int32 startHeight;
    private int32 currentHeight;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsBottomToTopImageAnimation() {
    this.startHeight = 0;
    this.currentHeight = 0;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public BottomToTopImageAnimation(Image image, AnimationBehavior animationBehavior) {
        base(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior);
        this.initFieldsBottomToTopImageAnimation();
        this.setFrame(this.getSize() - 1);
    }
    

    public override void nextFrame() {
        base.previousFrame();
        this.update();
    }
    

    public override void previousFrame() {
        base.nextFrame();
        this.update();
    }
    

    public override void setFrame(int32 index) {
        base.setFrame(index);
        this.update();
    }
    

    private void update() {
        this.startHeight = this.getDrawHeight() * this.getFrame() / this.getSize();
        this.currentHeight = this.getDrawHeight() - this.startHeight;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.startHeight, this.getDrawWidth(), this.currentHeight, Sprite.TRANS_NONE, x, y + this.startHeight, this.anchor);
    }
}

