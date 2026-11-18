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
// import org.allbinary.graphics.GPoint
// import org.allbinary.util.BasicArrayList

public class VectorAnimationUtil : JObject {
    private static VectorAnimationUtil? instance;
    private static bool staticSet_instance = false;
    private static VectorAnimationUtil staticGet_instance() {
        if (!VectorAnimationUtil.staticSet_instance) {
            VectorAnimationUtil.staticSet_instance = true;
            VectorAnimationUtil.instance = new VectorAnimationUtil();
        }
        return VectorAnimationUtil.instance;
    }
    

    public static VectorAnimationUtil getInstance() {
        return VectorAnimationUtil.staticGet_instance();
    }
    

    public VectorAnimationUtil() {
        base();
    }
    

    public virtual int32[,,] toAnimationArrayFromListOfPointListWithPointsPerFrame(BasicArrayList vector, int32 pointsPerFrame) {
        int32 size = vector.size();
        int32[,,] points = new int32[size, pointsPerFrame, 2];
        BasicArrayList nextBasicArrayList = null;
        int32[,] framePoints = null;
        for (int32 index = 0; index < size; index++) {
            nextBasicArrayList = ((BasicArrayList) vector.objectArray[index]);
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            for (int32 pointIndex = 0; pointIndex < framePoints.length[0]; pointIndex++) {
                points[index, pointIndex, 0] = framePoints[pointIndex, 0];
                points[index, pointIndex, 1] = framePoints[pointIndex, 1];
            }
        }
        return points;
    }
    

    public virtual int32[,,] toAnimationArrayFromListOfPointList(BasicArrayList vector) {
        int32 size = vector.size();
        int32[,,] points = new int32[size, 0, 0];
        BasicArrayList nextBasicArrayList = null;
        int32[,] framePoints = null;
        for (int32 index = 0; index < size; index++) {
            nextBasicArrayList = ((BasicArrayList) vector.objectArray[index]);
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            points[index] = new int32[framePoints.length[0], 2];
            for (int32 pointIndex = 0; pointIndex < framePoints.length[0]; pointIndex++) {
                points[index, pointIndex, 0] = framePoints[pointIndex, 0];
                points[index, pointIndex, 1] = framePoints[pointIndex, 1];
            }
        }
        return points;
    }
    

    public virtual int32[,] toFrameArrayFromPointBasicArrayList(BasicArrayList list) {
        int32[,] points = new int32[list.size(), 2];
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            GPoint nextPoint = ((GPoint) list.objectArray[index]);
            points[index, 0] = nextPoint.getX();
            points[index, 1] = nextPoint.getY();
        }
        return points;
    }
}

