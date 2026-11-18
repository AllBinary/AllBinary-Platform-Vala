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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.util.CircularIndexUtil

public class ImageSegmentAnimation : ImageAnimation {
    private int32 startX;
    private int32 startY;
    private int32 drawWidth;
    private int32 drawHeight;
    private CircularIndexUtil circularIndexUtil;
    private int32[] sequenceArray;

    // Java field initializers run after the base constructor
    private void initFieldsImageSegmentAnimation() {
    
    
    
    
    
    
    }
    

    public ImageSegmentAnimation(Image image, int32[] sequenceArray, AnimationBehavior animationBehavior) {
        base(image, animationBehavior);
        this.initFieldsImageSegmentAnimation();
        this.startX = 0;
        this.startY = 0;
        this.drawWidth = this.getImage().getWidth();
        this.drawHeight = this.getImage().getHeight();
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.drawHeight);
        this.sequenceArray = sequenceArray;
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
        return this.circularIndexUtil.getSize();
    }
    

    public override void setSequence(int32[] sequenceArray) {
        this.sequenceArray = sequenceArray;
    }
    

    public override int32[] getSequence() {
        return this.sequenceArray;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
    }
    

    public virtual int32 getStartX() {
        return this.startX;
    }
    

    public virtual void setStartX(int32 startX) {
        this.startX = startX;
    }
    

    public virtual int32 getStartY() {
        return this.startY;
    }
    

    public virtual void setStartY(int32 startY) {
        this.startY = startY;
    }
    

    public virtual int32 getDrawWidth() {
        return this.drawWidth;
    }
    

    public virtual void setDrawWidth(int32 drawWidth) {
        this.drawWidth = drawWidth;
    }
    

    public virtual int32 getDrawHeight() {
        return this.drawHeight;
    }
    

    public virtual void setDrawHeight(int32 drawHeight) {
        this.drawHeight = drawHeight;
    }
}

