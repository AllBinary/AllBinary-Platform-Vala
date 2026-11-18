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

public class PointsUtil : JObject {
    private static PointsUtil? instance;
    private static bool staticSet_instance = false;
    private static PointsUtil staticGet_instance() {
        if (!PointsUtil.staticSet_instance) {
            PointsUtil.staticSet_instance = true;
            PointsUtil.instance = new PointsUtil();
        }
        return PointsUtil.instance;
    }

    public PointsUtil() {
        base();
    }
    

    public static PointsUtil getInstance() {
        return PointsUtil.staticGet_instance();
    }
    

    public virtual int32[,,] adjustXY(int32[,,] points, int32 x, int32 y) {
        int32 size = points.length[0];
        int32[,,] newPoints = new int32[size, 0, 0];
        for (int32 index = 0; index < size; index++) {
            int32 size2 = points[index].length;
            newPoints[index] = new int32[size2, 2];
            for (int32 index2 = 0; index2 < size2; index2++) {
                if (points[index, index2, 0] != 1000) {
                    newPoints[index, index2, 0] = points[index, index2, 0] + x;
                    newPoints[index, index2, 1] = points[index, index2, 1] + y;
                } else {
                    newPoints[index, index2, 0] = 1000;
                    newPoints[index, index2, 1] = 1000;
                }
            }
        }
        return newPoints;
    }
    

    public virtual int32[,] adjust_2(int32[,] points, int32 both) {
        return this.adjust_3(points, both, both);
    }
    

    public virtual int32[,] adjust_3(int32[,] points, int32 x, int32 y) {
        int32[,] newPoints = new int32[points.length[0], 2];
        for (int32 index2 = 0; index2 < points.length[0]; index2++) {
            if (points[index2, 0] != 1000) {
                newPoints[index2, 0] = points[index2, 0] + x;
                newPoints[index2, 1] = points[index2, 1] + y;
            } else {
                newPoints[index2, 0] = 1000;
                newPoints[index2, 1] = 1000;
            }
        }
        return newPoints;
    }
}

