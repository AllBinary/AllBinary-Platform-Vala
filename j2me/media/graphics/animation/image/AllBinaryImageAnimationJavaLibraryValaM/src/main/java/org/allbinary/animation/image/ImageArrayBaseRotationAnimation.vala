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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.DisposalUtil
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.RotationAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.image.ImageModifierUtil
// import org.allbinary.util.CircularIndexUtil

public class ImageArrayBaseRotationAnimation : RotationAnimation {
    private ImageModifierUtil imageModifierUtil;
    private Image[] originalImageArray;
    private Image[] imageArray;
    private Image currentImage;
    private int32 totalFrames;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsImageArrayBaseRotationAnimation() {
    this.imageModifierUtil = ImageModifierUtil.getInstanceOrCreate();
    
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    
    this.totalFrames = 0;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public ImageArrayBaseRotationAnimation(Image[] originalImageArray, AngleInfo angleInfo, AnimationBehavior animationBehavior) {
        base(angleInfo, CircularIndexUtil.createInstance(360 / ((int32) (angleInfo.getAngleIncrementInfo().getAngleIncrement()))), animationBehavior);
        this.initFieldsImageArrayBaseRotationAnimation();
        this.originalImageArray = originalImageArray;
        this.setImageArray(this.imageModifierUtil.getImageArray(originalImageArray));
        this.currentImage = this.imageArray[this.circularIndexUtil.getIndex()];
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
    }
    

    public override void setAlpha(int32 alpha) {
        if (this.alphaP != alpha) {
            base.setAlpha(alpha);
            this.imageModifierUtil.reset();
            int32 index = this.circularIndexUtil.getIndex();
            this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        }
    }
    

    public override void nextRotation() {
        base.nextRotation();
        int32 index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        this.currentImage = this.imageArray[index];
    }
    

    public override void previousRotation() {
        base.previousRotation();
        int32 index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        this.currentImage = this.imageArray[index];
    }
    

    public override void setFrame(int32 index2) {
        base.setFrame(index2);
        int32 index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        this.currentImage = this.imageArray[index];
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public virtual void setImageArray(Image[] imageArray) {
        this.imageArray = imageArray;
        this.totalFrames = imageArray.length;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        graphics.drawImage(this.currentImage, x, y, this.anchor);
    }
    

    public virtual void close() {
        DisposalUtil disposalUtil = DisposalUtil.getInstance();
        int32 size2 = this.imageArray.length;
        for (int32 index = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray[index]);
        }
        int32 size = this.originalImageArray.length;
        for (int32 index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]);
        }
        disposalUtil.disposeImage(this.currentImage);
    }
    

    public virtual void finalize() {
        DisposalUtil disposalUtil = DisposalUtil.getInstance();
        int32 size2 = this.imageArray.length;
        for (int32 index = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray[index]);
        }
        int32 size = this.originalImageArray.length;
        for (int32 index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]);
        }
        disposalUtil.disposeImage(this.currentImage);
    }
}

