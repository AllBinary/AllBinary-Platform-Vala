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
// import org.allbinary.DisposalUtil
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.util.CircularIndexUtil

public class TweenedImageAnimation : IndexedAnimation {
    private Image image;
    private int32 dx;
    private int32 dy;
    private int32 totalFrames;
    public CircularIndexUtil circularIndexUtil;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsTweenedImageAnimation() {
    
    
    
    
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public TweenedImageAnimation(Image image, int32 dx, int32 dy, int32 totalFrames, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsTweenedImageAnimation();
        this.image = image;
        this.dx = dx;
        this.dy = dy;
        this.totalFrames = totalFrames;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
    }
    

    public override void nextFrame() {
        this.circularIndexUtil.next();
    }
    

    public override void previousFrame() {
        this.circularIndexUtil.previous();
    }
    

    public override void setFrame(int32 index) {
        this.circularIndexUtil.setIndex(index);
    }
    

    public override int32 getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    public override int32 getSize() {
        return this.totalFrames;
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        int32 frame = this.getFrame();
        int32 currentX = this.dx * frame;
        int32 currentY = this.dy * frame;
        graphics.drawImage(this.image, x + currentX, y + currentY, this.anchor);
    }
    

    public virtual void close() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    public virtual void finalize() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
}

