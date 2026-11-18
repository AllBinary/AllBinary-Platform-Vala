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
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.pipeline.BasicGraphicsPipeline
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListS

public class VectorMirrorGenerator : JObject {
    private static VectorMirrorGenerator? instance;
    private static bool staticSet_instance = false;
    private static VectorMirrorGenerator staticGet_instance() {
        if (!VectorMirrorGenerator.staticSet_instance) {
            VectorMirrorGenerator.staticSet_instance = true;
            VectorMirrorGenerator.instance = new VectorMirrorGenerator();
        }
        return VectorMirrorGenerator.instance;
    }
    public LogUtil logUtil;
    private VectorAnimationUtil vectorAnimationUtil;

    // Java field initializers run after the base constructor
    private void initFieldsVectorMirrorGenerator() {
    this.logUtil = LogUtil.getInstance();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    }
    

    public static VectorMirrorGenerator getInstance() {
        return VectorMirrorGenerator.staticGet_instance();
    }
    

    public VectorMirrorGenerator() {
        base();
        this.initFieldsVectorMirrorGenerator();
    }
    

    public virtual int32[,,] getInstance2(int32[,,] points, int32 width) {
        {
            PointFactory pointFactory = PointFactory.getInstance();
            BasicArrayList pointBasicArrayList = null;
            int32[,] nextPoints = null;
            int32 size2 = 0;
            int32 size = points.length[0];
            BasicArrayList pointsBasicArrayList = new BasicArrayListS(size);
            for (int32 frame = 0; frame < size; frame++) {
                nextPoints = points[frame];
                size2 = nextPoints.length[0];
                pointBasicArrayList = new BasicArrayListS(size2);
                for (int32 index = 0; index < size2; index++) {
                    pointBasicArrayList.add(pointFactory.createXY(nextPoints[index, 0], nextPoints[index, 1]));
                }
                pointsBasicArrayList.add(pointBasicArrayList);
            }
            for (int32 index = 0; index < points.length[0]; index++) {
                pointsBasicArrayList.add(this.getInstance2(((BasicArrayList) pointsBasicArrayList.objectArray[index]), width));
            }
            int32[,,] newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointList(pointsBasicArrayList);
            return newPoints;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual BasicArrayList getInstance2(BasicArrayList pointBasicArrayList, int32 width) {
        BasicGraphicsPipeline graphicsPipe = new BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.mirror(width);
        return graphicsPipe.getMatrix();
    }
}

