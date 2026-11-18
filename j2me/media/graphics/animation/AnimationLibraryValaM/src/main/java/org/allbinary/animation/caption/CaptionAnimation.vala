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
// import org.allbinary.animation.Animation

public class CaptionAnimation : Animation {
    private Animation animationInterface;
    private Animation overlayAnimationInterface;
    private int32 captionDx;
    private int32 captionDy;
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsCaptionAnimation() {
    
    
    
    
    
    
    }
    

    public CaptionAnimation(Animation animationInterface, Animation overlayAnimationInterface, int32 captionDx, int32 captionDy, int32 dx, int32 dy) {
        base();
        this.initFieldsCaptionAnimation();
        this.animationInterface = animationInterface;
        this.overlayAnimationInterface = overlayAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
    }
    

    public override void nextFrame() {
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.animationInterface.paintXY(graphics, x + this.captionDx, y + this.captionDy);
        this.overlayAnimationInterface.paintXY(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy);
    }
    

    public override void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
        this.animationInterface.paintThreedXYZ(graphics, x + this.captionDx, y + this.captionDy, z);
        this.overlayAnimationInterface.paintThreedXYZ(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy, z);
    }
}

