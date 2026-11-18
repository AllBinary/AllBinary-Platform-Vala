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
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListS
// import org.allbinary.vector.VectorInfo

public class VectorRotationGenerator : JObject {
    private static VectorRotationGenerator? instance;
    private static bool staticSet_instance = false;
    private static VectorRotationGenerator staticGet_instance() {
        if (!VectorRotationGenerator.staticSet_instance) {
            VectorRotationGenerator.staticSet_instance = true;
            VectorRotationGenerator.instance = new VectorRotationGenerator();
        }
        return VectorRotationGenerator.instance;
    }
    public LogUtil logUtil;
    private VectorAnimationUtil vectorAnimationUtil;
    private AngleFactory angleFactory;

    // Java field initializers run after the base constructor
    private void initFieldsVectorRotationGenerator() {
    this.logUtil = LogUtil.getInstance();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    this.angleFactory = AngleFactory.getInstance();
    }
    

    public static VectorRotationGenerator getInstance() {
        return VectorRotationGenerator.staticGet_instance();
    }
    

    public VectorRotationGenerator() {
        base();
        this.initFieldsVectorRotationGenerator();
    }
    

    public virtual int32[,,] getInstance1(VectorInfo vectorRotationInfo) {
        return this.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames());
    }
    

    public virtual int32[,,] getInstanceFrames(int32 width, int32 height, int32[,] points, int32 frames) {
        {
            int16 totalAngle = this.angleFactory.TOTAL_ANGLE;
            int32 angleIncrement = ((int32) (totalAngle)) / frames;
            BasicArrayList pointsBasicArrayList = new BasicArrayListS(((int32) (totalAngle)) / angleIncrement);
            BasicArrayList pointBasicArrayList = new BasicArrayListS(points.length[0]);
            PointFactory pointFactory = PointFactory.getInstance();
            int32 size = points.length[0];
            for (int32 index = 0; index < size; index++) {
                pointBasicArrayList.add(pointFactory.createXY(points[index, 0], points[index, 1]));
            }
            int32 index = 0;
            while (index < ((int32) (totalAngle))) {
                pointsBasicArrayList.add(this.getListAtAngle(width, height, pointBasicArrayList, this.angleFactory.getAt(index)));
                index += angleIncrement;
            }
            int32[,,] newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size());
            return newPoints;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual BasicArrayList getListAtAngle(int32 width, int32 height, BasicArrayList pointBasicArrayList, Angle angle) {
        BasicGraphicsPipeline graphicsPipe = new BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(-(width >> 1), -(height >> 1));
        graphicsPipe.rotateToAngle(angle);
        graphicsPipe.translate((width >> 1), (height >> 1));
        return graphicsPipe.getMatrix();
    }
}

