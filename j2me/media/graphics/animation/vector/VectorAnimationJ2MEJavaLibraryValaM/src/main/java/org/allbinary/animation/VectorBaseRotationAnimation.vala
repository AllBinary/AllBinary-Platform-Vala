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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.math.AngleInfo
// import org.allbinary.util.CircularIndexUtil

public class VectorBaseRotationAnimation : RotationAnimation, VectorAnimationInterface, IndexedAnimationInterface, ColorCompositeInterface, SequentialAnimationInterface, BasicColorCompositeSetterInterface, AnimationInterface, SequenceInterface, LocationPaintableInterface {
    private int32[,,] currentPoints;

    // Java field initializers run after the base constructor
    private void initFieldsVectorBaseRotationAnimation() {
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    }
    

    public VectorBaseRotationAnimation(AngleInfo angleInfo, int32[,,] currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) {
        base(angleInfo, CircularIndexUtil.createInstance(360 / ((int32) (angleInfo.getAngleIncrementInfo().getAngleIncrement()))), animationBehavior);
        this.initFieldsVectorBaseRotationAnimation();
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
    }
    

    public override int32 getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    public override void setFrame(int32 index) {
        this.circularIndexUtil.setIndex(index);
    }
    

    public override void nextFrame() {
        this.circularIndexUtil.next();
    }
    

    public override void previousFrame() {
        this.circularIndexUtil.previous();
    }
    

    public override int32 getSize() {
        return this.currentPoints.length[0];
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
        {
            int32 nextPointX = 0;
            int32 nextPointY = 0;
            int32[] nextPoint = null;
            int32[] point = null;
            int32[,] currentPointsFrame = this.currentPoints[this.circularIndexUtil.getIndex()];
            int32 size = currentPointsFrame.length[0];
            int32 index = size - 2;
            while (--index >= 0) {
                nextPoint = JArrays.rowInt32(currentPointsFrame, index);
                point = JArrays.rowInt32(currentPointsFrame, index + 1);
                nextPointX = nextPoint[0];
                nextPointY = nextPoint[1];
                if (nextPointX != 1000) {
                    graphics.drawLine(point[0] + x, point[1] + y, nextPointX + x, nextPointY + y);
                } else {
                    index--;
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual int32[,] getPoints(int32 frame) {
        return this.currentPoints[frame];
    }
    

    public virtual void setPoints(int32[,,] currentPoints) {
        this.currentPoints = currentPoints;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.currentPoints.length[0]);
    }
    

    public override BasicColor getBasicColorP() {
        return base.getBasicColorP();
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        base.setBasicColorP(basicColor);
    }
}

