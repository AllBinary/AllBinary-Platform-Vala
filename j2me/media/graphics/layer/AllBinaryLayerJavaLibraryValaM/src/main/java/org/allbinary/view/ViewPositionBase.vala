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
// package org.allbinary.view
// import org.allbinary.graphics.GPoint

public class ViewPositionBase : GPoint {
    public static ViewPositionBase? NULL_VIEW_POSITION;
    private static bool staticSet_NULL_VIEW_POSITION = false;
    public static ViewPositionBase staticGet_NULL_VIEW_POSITION() {
        if (!ViewPositionBase.staticSet_NULL_VIEW_POSITION) {
            ViewPositionBase.staticSet_NULL_VIEW_POSITION = true;
            ViewPositionBase.NULL_VIEW_POSITION = new ViewPositionBase(0, 0, 0);
        }
        return ViewPositionBase.NULL_VIEW_POSITION;
    }
    

    public ViewPositionBase(int32 x, int32 y, int32 z) {
        base(x, y, z);
    }
    

    public virtual int32 getX2() {
        return this.getX();
    }
    

    public virtual int32 getY2() {
        return this.getY();
    }
    

    public virtual int32 getZ2() {
        return this.getZ();
    }
    

    public virtual void setAllbinaryLayer(JObject allbinaryLayer) {
    }
}

