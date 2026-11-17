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
// package org.allbinary.math
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

public class RectangleCollisionUtil : JObject {
    private static RectangleCollisionUtil? instance;
    private static bool staticSet_instance = false;
    private static RectangleCollisionUtil staticGet_instance() {
        if (!RectangleCollisionUtil.staticSet_instance) {
            RectangleCollisionUtil.staticSet_instance = true;
            RectangleCollisionUtil.instance = new RectangleCollisionUtil();
        }
        return RectangleCollisionUtil.instance;
    }
    

    public static RectangleCollisionUtil getInstance() {
        return RectangleCollisionUtil.staticGet_instance();
    }
    

    public RectangleCollisionUtil() {
        base();
    }
    

    public virtual bool isCollision(int32 rectX1, int32 rectY1, int32 rectX2, int32 rectY2, int32 rect2X1, int32 rect2Y1, int32 rect2X2, int32 rect2Y2) {
        if (rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
    

    public virtual bool isInside(int32 rectX1, int32 rectY1, int32 rectX2, int32 rectY2, int32 x, int32 y) {
        if (x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
}

