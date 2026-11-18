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
// package org.allbinary.animation.image
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image
// import org.allbinary.animation.AnimationBehavior

public class AdjustedImageAnimation : ImageAnimation {
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsAdjustedImageAnimation() {
    this.dx = 0;
    this.dy = 0;
    }
    

    public AdjustedImageAnimation(Image image, int32 dx, int32 dy, AnimationBehavior animationBehavior) {
        base(image, animationBehavior);
        this.initFieldsAdjustedImageAnimation();
        this.init(dx, dy);
    }
    

    public virtual void init(int32 dx, int32 dy) {
        this.setDx(dx);
        this.setDy(dy);
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        base.paintXY(graphics, x + this.dx, y + this.dy);
    }
    

    public override void setDx(int32 dx) {
        this.dx = dx;
    }
    

    public override int32 getDx() {
        return this.dx;
    }
    

    public override void setDy(int32 dy) {
        this.dy = dy;
    }
    

    public override int32 getDy() {
        return this.dy;
    }
}

