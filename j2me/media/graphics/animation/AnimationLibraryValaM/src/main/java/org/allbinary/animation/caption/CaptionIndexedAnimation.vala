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
// package org.allbinary.animation.caption
// import javax.microedition.lcdui.Graphics
// import javax.microedition.media.Player
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.animation.AnimationEventHandler
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper

public class CaptionIndexedAnimation : IndexedAnimation {
    private Animation animationInterface;
    private IndexedAnimation movieIndexedAnimationInterface;
    private int32 captionDx;
    private int32 captionDy;
    private int32 dx;
    private int32 dy;
    private int32 time;
    private AllBinaryEventObject END_EVENT;
    private TimeDelayHelper timeDelayHelper;
    private Player player;

    // Java field initializers run after the base constructor
    private void initFieldsCaptionIndexedAnimation() {
    
    
    
    
    
    
    
    
    
    
    }
    

    public CaptionIndexedAnimation(Animation animationInterface, IndexedAnimation movieIndexedAnimationInterface, Player player, int32 captionDx, int32 captionDy, int32 dx, int32 dy, int32 time, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsCaptionIndexedAnimation();
        this.animationInterface = animationInterface;
        this.movieIndexedAnimationInterface = movieIndexedAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.END_EVENT = new AllBinaryEventObject(this);
        int32 timePerFrame = this.time / this.getSize();
        this.timeDelayHelper = new TimeDelayHelper(timePerFrame);
        this.player = player;
        this.player.start();
    }
    

    public override void nextFrame() {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.movieIndexedAnimationInterface.nextFrame();
        }
        if (this.isLastFrame()) {
            AnimationEventHandler.getInstance().fireEvent(this.END_EVENT);
        }
    }
    

    public override bool isLastFrame() {
        if (this.movieIndexedAnimationInterface.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    public override void previousFrame() {
        this.movieIndexedAnimationInterface.previousFrame();
    }
    

    public override void setFrame(int32 index) {
        this.movieIndexedAnimationInterface.setFrame(index);
    }
    

    public override int32 getFrame() {
        return this.movieIndexedAnimationInterface.getFrame();
    }
    

    public override int32 getSize() {
        return this.movieIndexedAnimationInterface.getSize();
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.animationInterface.paintXY(graphics, x + this.captionDx, y + this.captionDy);
        this.movieIndexedAnimationInterface.paintXY(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy);
    }
    

    public override void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
        this.animationInterface.paintThreedXYZ(graphics, x + this.captionDx, y + this.captionDy, z);
        this.movieIndexedAnimationInterface.paintThreedXYZ(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy, z);
    }
}

