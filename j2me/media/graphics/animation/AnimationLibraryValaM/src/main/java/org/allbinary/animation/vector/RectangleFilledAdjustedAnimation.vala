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
// package org.allbinary.animation.vector
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.ColorCompositeInterface

public class RectangleFilledAdjustedAnimation : RectangleFilledAnimation, ColorCompositeInterface, BasicColorCompositeSetterInterface {
    private int32 offsetX;
    private int32 offsetY;

    // Java field initializers run after the base constructor
    private void initFieldsRectangleFilledAdjustedAnimation() {
    
    
    }
    

    public RectangleFilledAdjustedAnimation(int32 width, int32 height, int32 offsetX, int32 offsetY, BasicColor basicColor) {
        base(width, height, basicColor);
        this.initFieldsRectangleFilledAdjustedAnimation();
        this.offsetX = offsetX;
        this.offsetY = offsetY;
        this.setBasicColorP(basicColor);
    }
    

    public override void nextFrame() {
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        base.paintXY(graphics, x + this.offsetX, y + this.offsetY);
    }
    

    public virtual void setOffsetX(int32 offsetX) {
        this.offsetX = offsetX;
    }
    

    public virtual void setOffsetY(int32 offsetY) {
        this.offsetY = offsetY;
    }
    

    public override BasicColor getBasicColorP() {
        return base.getBasicColorP();
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        base.setBasicColorP(basicColor);
    }
}

