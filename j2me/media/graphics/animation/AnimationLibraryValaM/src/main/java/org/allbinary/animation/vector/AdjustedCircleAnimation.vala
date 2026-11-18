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
// import org.allbinary.AndroidUtil
// import org.allbinary.graphics.color.BasicColor

public class AdjustedCircleAnimation : CircleAnimation {
    private int32 xAdjustment;
    private int32 yAdjustment;

    // Java field initializers run after the base constructor
    private void initFieldsAdjustedCircleAnimation() {
    this.xAdjustment = 0;
    this.yAdjustment = 0;
    }
    

    public static AdjustedCircleAnimation createAnimation(int32 width, int32 height, int32 xAdjustment, int32 yAdjustment, BasicColor basicColor) {
        AdjustedCircleAnimation adjustedCircleAnimation = new AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment);
        return adjustedCircleAnimation;
    }
    

    public static AdjustedCircleAnimation createW(int32 width, int32 height, int32 innerWidth, BasicColor basicColor) {
        AdjustedCircleAnimation adjustedCircleAnimation = new AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.init(innerWidth);
        return adjustedCircleAnimation;
    }
    

    public AdjustedCircleAnimation(int32 width, int32 height, BasicColor basicColor) {
        base(width, height, basicColor);
        this.initFieldsAdjustedCircleAnimation();
    }
    

    private void initXY(int32 xAdjustment, int32 yAdjustment) {
        this.xAdjustment = xAdjustment;
        this.yAdjustment = yAdjustment;
    }
    

    private void init(int32 innerWidth) {
        if (AndroidUtil.isAndroid()) {
            int32 widthPortion = (((innerWidth / 3) * 10) / 7);
            this.xAdjustment = -((this.width >> 1) - widthPortion);
            this.yAdjustment = this.xAdjustment;
        } else {
            this.xAdjustment = -((this.width >> 1) - innerWidth);
            this.yAdjustment = this.xAdjustment;
        }
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawArc(x + this.xAdjustment, y + this.yAdjustment, this.width, this.height, 0, this.TOTAL_ANGLE);
    }
}

