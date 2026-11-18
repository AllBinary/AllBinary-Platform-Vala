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
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

public class ImageBaseRotationAnimation : RotationAnimation {
    private Image image;
    public int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsImageBaseRotationAnimation() {
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public ImageBaseRotationAnimation(Image image, AngleInfo angleInfo, int16 totalAngle, AnimationBehavior animationBehavior) {
        base(angleInfo, CircularIndexUtil.createInstance(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior);
        this.initFieldsImageBaseRotationAnimation();
        this.image = image;
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
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
    

    public override int32 getWidth() {
        return this.image.getWidth();
    }
    

    public override int32 getHeight() {
        return this.image.getHeight();
    }
    

    public virtual void close() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    public virtual void finalize() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
}

