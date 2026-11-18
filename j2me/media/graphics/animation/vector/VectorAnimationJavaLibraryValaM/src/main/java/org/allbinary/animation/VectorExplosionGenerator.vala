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
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.pipeline.RandomRotationFactory
// import org.allbinary.graphics.pipeline.RandomTranslation
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListS

public class VectorExplosionGenerator : JObject {
    private static VectorExplosionGenerator? instance;
    private static bool staticSet_instance = false;
    private static VectorExplosionGenerator staticGet_instance() {
        if (!VectorExplosionGenerator.staticSet_instance) {
            VectorExplosionGenerator.staticSet_instance = true;
            VectorExplosionGenerator.instance = new VectorExplosionGenerator();
        }
        return VectorExplosionGenerator.instance;
    }
    public VectorExplosionType RANDOM;
    public VectorExplosionType ROTATION;
    private VectorAnimationUtil vectorAnimationUtil;
    private RandomRotationFactory randomRotationFactory;

    // Java field initializers run after the base constructor
    private void initFieldsVectorExplosionGenerator() {
    this.RANDOM = new VectorExplosionType();
    this.ROTATION = new VectorExplosionType();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    this.randomRotationFactory = RandomRotationFactory.getInstance();
    }
    

    public static VectorExplosionGenerator getInstance() {
        return VectorExplosionGenerator.staticGet_instance();
    }
    

    public VectorExplosionGenerator() {
        base();
        this.initFieldsVectorExplosionGenerator();
    }
    

    public virtual BasicArrayList createList(BasicArrayList list, int32 howMuch, VectorExplosionType type) {
        GPoint point = null;
        int32 size = list.size();
        int32[,] points = new int32[size, 2];
        for (int32 index = 0; index < size; index++) {
            point = ((GPoint) list.objectArray[index]);
            points[index, 0] = point.getX();
            points[index, 1] = point.getY();
        }
        return this.createListFromPoints(list, points, howMuch, type);
    }
    

    public virtual int32[,,] getInstance3(int32[,] points, int32 howMuch, VectorExplosionType type) {
        BasicArrayList pointsBasicArrayList = this.getInstanceStartFrame(points, howMuch, type, true);
        BasicArrayList tempBasicArrayList = ((BasicArrayList) pointsBasicArrayList.objectArray[0]);
        int32[,,] newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, tempBasicArrayList.size());
        return newPoints;
    }
    

    public virtual BasicArrayList getInstanceStartFrame(int32[,] points, int32 howMuch, VectorExplosionType type, bool startFrame) {
        {
            BasicArrayList pointsBasicArrayList = new BasicArrayListS(howMuch);
            pointsBasicArrayList.add(this.createPointsBasicArrayList(points));
            int32 frameIndex = 0;
            BasicArrayList tempBasicArrayList = null;
            BasicArrayList pointBasicArrayList = null;
            while (frameIndex < howMuch) {
                tempBasicArrayList = ((BasicArrayList) pointsBasicArrayList.objectArray[frameIndex]);
                pointBasicArrayList = this.createListFromPoints(tempBasicArrayList, points, howMuch, type);
                pointsBasicArrayList.add(pointBasicArrayList);
                frameIndex++;
            }
            if (!startFrame) {
                pointsBasicArrayList.removeAt(0);
            }
            return pointsBasicArrayList;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private BasicArrayList createListFromPoints(BasicArrayList tempBasicArrayList, int32[,] points, int32 howMuch, VectorExplosionType type) {
        int32 index = 0;
        BasicArrayList pointBasicArrayList = new BasicArrayListD();
        BasicArrayList sectionBasicArrayList = null;
        while (index < points.length[0]) {
            sectionBasicArrayList = new BasicArrayListD();
            while (points[index, 0] != 1000) {
                sectionBasicArrayList.add(tempBasicArrayList.objectArray[index]);
                index++;
                if (index >= points.length[0]) {
                    break;
                }
            }
            sectionBasicArrayList = RandomTranslation.getInstance2(sectionBasicArrayList, howMuch);
            if (type == this.ROTATION) {
                sectionBasicArrayList = this.randomRotationFactory.getInstanceList(sectionBasicArrayList, howMuch);
            }
            int32 size = sectionBasicArrayList.size();
            for (int32 index2 = 0; index2 < size; index2++) {
                pointBasicArrayList.add(sectionBasicArrayList.objectArray[index2]);
            }
            if (index >= points.length[0]) {
                break;
            } else if (points[index, 0] == 1000) {
                pointBasicArrayList.add(tempBasicArrayList.objectArray[index]);
                index++;
            }
        }
        return pointBasicArrayList;
    }
    

    private BasicArrayList createPointsBasicArrayList(int32[,] points) {
        if (points.length[0] == 0) {
            JSystem.fatal(new JException("Exception", "Not Points Provided"));
        }
        BasicArrayList firstPointBasicArrayList = new BasicArrayListS(points.length[0]);
        PointFactory pointFactory = PointFactory.getInstance();
        for (int32 index = 0; index < points.length[0]; index++) {
            firstPointBasicArrayList.add(pointFactory.createXY(points[index, 0], points[index, 1]));
        }
        return firstPointBasicArrayList;
    }
}

