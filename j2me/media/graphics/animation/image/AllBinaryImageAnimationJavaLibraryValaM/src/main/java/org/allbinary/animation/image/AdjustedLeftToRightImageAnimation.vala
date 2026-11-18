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

public class AdjustedLeftToRightImageAnimation : LeftToRightImageAnimation {
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsAdjustedLeftToRightImageAnimation() {
    this.dx = 0;
    this.dy = 0;
    }
    

    public AdjustedLeftToRightImageAnimation(Image image, int32[] sequenceArray, int32 dx, int32 dy, AnimationBehavior animationBehavior) {
        base(image, sequenceArray, animationBehavior);
        this.initFieldsAdjustedLeftToRightImageAnimation();
        this.init(dx, dy);
    }
    

    public virtual void init(int32 dx, int32 dy) {
        this.dx = dx;
        this.dy = dy;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        base.paintXY(graphics, x + this.dx, y + this.dy);
    }
}

