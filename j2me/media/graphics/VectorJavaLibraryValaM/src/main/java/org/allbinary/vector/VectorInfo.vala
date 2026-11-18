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
// package org.allbinary.vector

public class VectorInfo : JObject {
    private int32 width;
    private int32 height;
    private int32[,] points;
    private int32 totalFrames;

    // Java field initializers run after the base constructor
    private void initFieldsVectorInfo() {
    
    
    
    
    }
    

    public VectorInfo(int32 width, int32 height, int32[,] points, int32 totalFrames) {
        base();
        this.initFieldsVectorInfo();
        this.width = width;
        this.height = height;
        this.points = points;
        this.totalFrames = totalFrames;
    }
    

    public virtual int32 getWidth() {
        return this.width;
    }
    

    private void setWidth(int32 width) {
        this.width = width;
    }
    

    public virtual int32 getHeight() {
        return this.height;
    }
    

    private void setHeight(int32 height) {
        this.height = height;
    }
    

    public virtual int32[,] getPoints() {
        return this.points;
    }
    

    private void setPoints(int32[,] points) {
        this.points = points;
    }
    

    public virtual int32 getTotalFrames() {
        return this.totalFrames;
    }
    

    private void setTotalFrames(int32 totalFrames) {
        this.totalFrames = totalFrames;
    }
}

