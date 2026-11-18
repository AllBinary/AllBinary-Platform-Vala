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

public class RightToLeftImageAnimation : ImageSegmentAnimation {
    private int32 startWidth;
    private int32 currentWidth;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsRightToLeftImageAnimation() {
    this.startWidth = 0;
    this.currentWidth = 0;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public RightToLeftImageAnimation(Image image, AnimationBehavior animationBehavior) {
        base(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior);
        this.initFieldsRightToLeftImageAnimation();
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
        this.startWidth = this.getDrawWidth() * this.getFrame() / this.getSize();
        this.currentWidth = this.getDrawWidth() - this.startWidth;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        graphics.drawRegion(this.getImage(), this.startWidth, this.getStartY(), this.currentWidth, this.getDrawHeight(), Sprite.TRANS_NONE, x + this.startWidth, y, this.anchor);
    }
}

