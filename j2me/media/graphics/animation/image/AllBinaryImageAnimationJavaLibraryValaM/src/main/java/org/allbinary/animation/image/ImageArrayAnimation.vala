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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.graphics.Anchor
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.util.CircularIndexUtil

public class ImageArrayAnimation : IndexedAnimation {
    private Image[] imageArray;
    private int32 totalFrames;
    public CircularIndexUtil circularIndexUtil;
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsImageArrayAnimation() {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    this.totalFrames = 0;
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public ImageArrayAnimation(Image[] imageArray, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsImageArrayAnimation();
        this.setImageArray(imageArray);
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
    

    public virtual Image getImage(int32 index) {
        return this.imageArray[index];
    }
    

    public virtual Image[] getImageArray() {
        return this.imageArray;
    }
    

    public virtual void setImageArray(Image[] imageArray) {
        this.imageArray = imageArray;
        this.totalFrames = imageArray.length;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        graphics.drawImage(this.imageArray[this.circularIndexUtil.getIndex()], x, y, this.anchor);
    }
}

