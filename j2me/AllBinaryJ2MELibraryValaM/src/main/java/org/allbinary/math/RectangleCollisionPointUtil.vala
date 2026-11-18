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
// import org.allbinary.graphics.GPoint
// import org.allbinary.util.BasicArrayList

public class RectangleCollisionPointUtil : JObject {
    

    public RectangleCollisionPointUtil() {
        base();
    }
    

    public static bool allPointsInside(int32 rectX1, int32 rectY1, int32 rectX2, int32 rectY2, BasicArrayList list) {
        RectangleCollisionUtil rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
        GPoint point = null;
        for (int32 index = list.size(); --index >= 0; ) {
            point = ((GPoint) list.objectArray[index]);
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())) {
                return false;
            }
        }
        return true;
    }
    

    public static bool allPointsInsideCell(int32 rectX1, int32 rectY1, int32 rectX2, int32 rectY2, BasicArrayList list, int32 xCellSize, int32 yCellSize) {
        RectangleCollisionUtil rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
        GPoint point = null;
        for (int32 index = list.size(); --index >= 0; ) {
            point = ((GPoint) list.objectArray[index]);
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX() * xCellSize, point.getY() * yCellSize)) {
                return false;
            }
        }
        return true;
    }
}

