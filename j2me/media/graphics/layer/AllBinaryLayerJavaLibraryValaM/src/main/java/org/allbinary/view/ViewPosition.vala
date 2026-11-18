/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.view
// import org.allbinary.layer.AllBinaryLayer

public class ViewPosition : ViewPositionBase {
    private AllBinaryLayer allbinaryLayer;

    // Java field initializers run after the base constructor
    private void initFieldsViewPosition() {
    this.allbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    public static ViewPosition getInstanceD() {
        return new ViewPosition(0, 0, 0);
    }
    

    public ViewPosition(int32 x, int32 y, int32 z) {
        base(x, y, z);
        this.initFieldsViewPosition();
    }
    

    public override int32 getX() {
        return this.allbinaryLayer.getXP();
    }
    

    public override int32 getY() {
        return this.allbinaryLayer.getYP();
    }
    

    public override int32 getZ() {
        return this.allbinaryLayer.getZP();
    }
    

    public override int32 getX2() {
        return this.getX() + this.allbinaryLayer.getWidth();
    }
    

    public override int32 getY2() {
        return this.getY() + this.allbinaryLayer.getHeight();
    }
    

    public override int32 getZ2() {
        return ((int32) ((((int64) (this.getZ())) + this.allbinaryLayer.getDepth())));
    }
    

    public override void setAllbinaryLayer(JObject allbinaryLayer) {
        this.allbinaryLayer = ((AllBinaryLayer) allbinaryLayer);
    }
}

