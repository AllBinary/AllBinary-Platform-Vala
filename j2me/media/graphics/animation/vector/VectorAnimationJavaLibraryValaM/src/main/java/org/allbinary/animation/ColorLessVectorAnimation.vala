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
// import org.allbinary.graphics.color.BasicColorFactory

public class ColorLessVectorAnimation : VectorAnimation {
    

    public ColorLessVectorAnimation(int32[,,] currentPoints, AnimationBehavior animationBehavior) {
        base(currentPoints, BasicColorFactory.getInstance().WHITE, animationBehavior);
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.paintVectors(graphics, x, y);
    }
}

