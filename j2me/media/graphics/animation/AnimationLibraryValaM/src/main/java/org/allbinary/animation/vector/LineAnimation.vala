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
// import org.allbinary.layer.PositionInterface
// import org.allbinary.logic.NullUtil

public class LineAnimation : Animation, ColorCompositeInterface, PositionInterface, BasicColorCompositeSetterInterface {
    private int32[,] newLine;
    private int32[,] tempLine;
    private int32[,] line;

    // Java field initializers run after the base constructor
    private void initFieldsLineAnimation() {
    this.newLine = new int32[2, 2];
    this.tempLine = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.line = new int32[2, 2];
    }
    

    public LineAnimation(BasicColor basicColor) {
        base();
        this.initFieldsLineAnimation();
        this.setBasicColorP(basicColor);
    }
    

    public virtual void init(int32 x, int32 y) {
        this.newLine[0, 0] = x;
        this.newLine[0, 1] = y;
        this.newLine[1, 0] = x;
        this.newLine[1, 1] = y;
        this.tempLine = this.line;
        this.line = this.newLine;
        this.newLine = this.tempLine;
    }
    

    public virtual void setPosition(int32 x, int32 y, int32 z) {
        this.newLine[0, 0] = this.line[1, 0];
        this.newLine[0, 1] = this.line[1, 1];
        this.newLine[1, 0] = x;
        this.newLine[1, 1] = y;
        this.tempLine = this.line;
        this.line = this.newLine;
        this.newLine = this.tempLine;
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        int32[,] currentLine = this.line;
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawLine(currentLine[0, 0], currentLine[0, 1], currentLine[1, 0], currentLine[1, 1]);
    }
    

    public override void nextFrame() {
    }
    

    public override BasicColor getBasicColorP() {
        return base.getBasicColorP();
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        base.setBasicColorP(basicColor);
    }
}

