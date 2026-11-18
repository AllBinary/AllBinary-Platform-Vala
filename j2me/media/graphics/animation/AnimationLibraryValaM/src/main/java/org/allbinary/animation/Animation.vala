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
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface

public class Animation : JObject, AnimationInterface, OpenGLSurfaceChangedInterface, LocationPaintableInterface {
    public BasicColorSetUtil basicSetColorUtil;
    public BasicColor basicColor;
    public int32 colorP;
    public BasicColor changeBasicColorP;
    public int32 changeColorP;
    public int32 alphaP;

    // Java field initializers run after the base constructor
    private void initFieldsAnimation() {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.colorP = 0;
    this.changeBasicColorP = BasicColorFactory.getInstance().NULL_COLOR;
    this.changeColorP = 0;
    this.alphaP = 0;
    }
    

    public Animation() {
        base();
        this.initFieldsAnimation();
    }
    

    public virtual void setAlpha(int32 alpha) {
        this.alphaP = alpha;
    }
    

    public virtual void nextFrame() {
    }
    

    public virtual void paintXY(Graphics graphics, int32 x, int32 y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
    }
    

    public virtual void paintThreedXYZ(Graphics graphics, int32 x, int32 y, int32 z) {
    }
    

    public virtual bool isThreed() {
        return false;
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public virtual void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
        this.colorP = this.basicColor.intValue();
    }
    

    public virtual void setBackgroundBasicColorP(BasicColor basicColor) {
    }
    

    public virtual BasicColor getChangeBasicColor() {
        return this.changeBasicColorP;
    }
    

    public virtual void changeBasicColor(BasicColor basicColor) {
        this.changeBasicColorP = basicColor;
        this.changeColorP = this.changeBasicColorP.intValue();
    }
    

    public virtual int32 getChangeColor() {
        return this.changeColorP;
    }
    

    public virtual int32 getColor() {
        return this.colorP;
    }
    

    public virtual void setScale(float scaleX, float scaleY) {
    }
    

    public virtual void setMaxScale(float maxScaleX, float maxScaleY) {
    }
    

    public virtual void @set(GL gl) {
    }
    

    public virtual void setDx(int32 dx) {
    }
    

    public virtual int32 getDx() {
        return 0;
    }
    

    public virtual void setDy(int32 dy) {
    }
    

    public virtual int32 getDy() {
        return 0;
    }
}

