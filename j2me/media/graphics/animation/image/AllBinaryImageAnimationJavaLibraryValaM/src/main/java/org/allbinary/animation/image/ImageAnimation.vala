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

public class ImageAnimation : IndexedAnimation {
    private Image image;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsImageAnimation() {
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public ImageAnimation(Image image, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsImageAnimation();
        this.image = image;
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
    }
    

    public override void nextFrame() {
    }
    

    public override void previousFrame() {
    }
    

    public override void setFrame(int32 index) {
    }
    

    public override int32 getFrame() {
        return 0;
    }
    

    public override int32 getSize() {
        return 1;
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        graphics.drawImage(this.image, x, y, this.anchor);
    }
    

    public virtual Image getImage() {
        return this.image;
    }
    

    public virtual void close() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    public virtual void finalize() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
}

