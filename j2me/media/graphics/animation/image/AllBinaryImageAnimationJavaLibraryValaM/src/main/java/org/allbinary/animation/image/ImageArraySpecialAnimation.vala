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
// import org.allbinary.animation.special.SpecialAnimationInterface
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

public class ImageArraySpecialAnimation : ImageArrayAnimation, SpecialAnimationInterface, IndexedAnimationInterface, SequentialAnimationInterface, AnimationInterface, SequenceInterface, LocationPaintableInterface {
    private TimeDelayHelper timeDelayHelper;
    private int32 loopCount;
    private int32 loopCountTotal;

    // Java field initializers run after the base constructor
    private void initFieldsImageArraySpecialAnimation() {
    this.timeDelayHelper = new TimeDelayHelper(270);
    this.loopCount = 0;
    this.loopCountTotal = 1;
    }
    

    public ImageArraySpecialAnimation(Image[] imageArray, AnimationBehavior animationBehavior) {
        base(imageArray, animationBehavior);
        this.initFieldsImageArraySpecialAnimation();
        this.reset();
    }
    

    public virtual int32 getLoopCount() {
        return this.loopCount;
    }
    

    public virtual void setLastFrame() {
        this.circularIndexUtil.setIndex(this.circularIndexUtil.getSize() - 1);
    }
    

    public override void reset() {
        this.setFrame(this.getSize() - 1);
        this.loopCount = 0;
    }
    

    public override void nextFrame() {
        if (this.getFrame() > 0) {
            if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
                this.previousFrame();
                if (this.getFrame() == 0) {
                    this.loopCount++;
                }
            }
        }
    }
    

    public virtual bool isComplete() {
        if (this.loopCount < this.loopCountTotal || this.getFrame() != 0) {
            return false;
        } else {
            return true;
        }
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        x = DisplayInfoSingleton.getInstance().getLastHalfWidth() - (this.getImage(this.circularIndexUtil.getIndex()).getWidth() >> 1);
        y = 5;
        base.paintXY(graphics, x, y);
    }
}

