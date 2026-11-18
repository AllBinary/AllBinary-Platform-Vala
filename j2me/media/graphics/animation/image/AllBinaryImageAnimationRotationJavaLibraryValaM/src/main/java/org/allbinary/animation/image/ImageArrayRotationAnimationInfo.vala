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
// import javax.microedition.lcdui.Image
// import org.allbinary.math.AngleInfo

public class ImageArrayRotationAnimationInfo : JObject {
    private Image[] imageArray;
    private int32 angleIncrement;
    private int32 totalAngle;
    private int32 dx;
    private int32 dy;

    // Java field initializers run after the base constructor
    private void initFieldsImageArrayRotationAnimationInfo() {
    
    
    
    
    
    }
    

    public ImageArrayRotationAnimationInfo(Image[] imageArray, int32 angleIncrement, int32 totalAngle, int32 dx, int32 dy) {
        base();
        this.initFieldsImageArrayRotationAnimationInfo();
        this.imageArray = imageArray;
        this.angleIncrement = angleIncrement;
        this.totalAngle = totalAngle;
        this.dx = dx;
        this.dy = dy;
    }
    

    public virtual void setImageArray(Image[] imageArray) {
        this.imageArray = imageArray;
    }
    

    public virtual Image[] getImageArray() {
        return this.imageArray;
    }
    

    public virtual AngleInfo getAngleInfoP() {
        return AngleInfo.getInstance1(((int16) (this.angleIncrement)));
    }
    

    public virtual void setTotalAngle(int32 totalAngle) {
        this.totalAngle = totalAngle;
    }
    

    public virtual int32 getTotalAngle() {
        return this.totalAngle;
    }
    

    public virtual void setDx(int32 dx) {
        this.dx = dx;
    }
    

    public virtual int32 getDx() {
        return this.dx;
    }
    

    public virtual void setDy(int32 dy) {
        this.dy = dy;
    }
    

    public virtual int32 getDy() {
        return this.dy;
    }
}

