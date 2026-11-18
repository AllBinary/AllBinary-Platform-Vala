/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.AnimationBehavior

public class AdjustCustomTextAnimation : CustomTextAnimation {
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsAdjustCustomTextAnimation() {
    
    
    }
    

    public AdjustCustomTextAnimation(string text, int32 fontSize, int32 dx, int32 dy, AnimationBehavior animationBehavior) {
        base(text, fontSize, animationBehavior);
        this.initFieldsAdjustCustomTextAnimation();
        this.dx = dx;
        this.dy = dy;
    }
    

    public override int32 getDx() {
        return this.dx;
    }
    

    public override void setDx(int32 dx) {
        this.dx = dx;
    }
    

    public override int32 getDy() {
        return this.dy;
    }
    

    public override void setDy(int32 dy) {
        this.dy = dy;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        base.paintXY(graphics, x + this.dx, y + this.dy);
    }
}

