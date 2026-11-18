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
// import org.allbinary.animation.Animation
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.ColorCompositeInterface
// import org.allbinary.math.AngleFactory

public class CircleAnimation : Animation, ColorCompositeInterface, BasicColorCompositeSetterInterface {
    public int32 TOTAL_ANGLE;
    public int32 width;
    public int32 height;

    // Java field initializers run after the base constructor
    private void initFieldsCircleAnimation() {
    this.TOTAL_ANGLE = ((int32) (AngleFactory.getInstance().TOTAL_ANGLE));
    
    
    }
    

    public CircleAnimation(int32 width, int32 height, BasicColor basicColor) {
        base();
        this.initFieldsCircleAnimation();
        this.width = width;
        this.height = height;
        this.setBasicColorP(basicColor);
    }
    

    public override void nextFrame() {
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawArc(x, y, this.width, this.height, 0, this.TOTAL_ANGLE);
    }
    

    public override BasicColor getBasicColorP() {
        return base.getBasicColorP();
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        base.setBasicColorP(basicColor);
    }
}

