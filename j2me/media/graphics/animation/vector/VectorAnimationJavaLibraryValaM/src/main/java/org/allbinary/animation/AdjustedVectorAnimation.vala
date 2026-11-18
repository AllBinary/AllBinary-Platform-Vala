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
// package org.allbinary.animation
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor

public class AdjustedVectorAnimation : VectorAnimation {
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsAdjustedVectorAnimation() {
    
    
    }
    

    public AdjustedVectorAnimation(int32[,,] currentPoints, BasicColor basicColor, int32 dx, int32 dy, AnimationBehavior animationBehavior) {
        base(currentPoints, basicColor, animationBehavior);
        this.initFieldsAdjustedVectorAnimation();
        this.dx = dx;
        this.dy = dy;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        base.paintXY(graphics, x + this.dx, y + this.dy);
    }
}

