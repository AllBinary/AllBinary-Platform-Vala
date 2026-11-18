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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.math.PrimitiveIntUtil
// import org.allbinary.util.CircularIndexUtil

public class VectorAnimation : IndexedAnimation, VectorAnimationInterface, IndexedAnimationInterface, ColorCompositeInterface, SequentialAnimationInterface, BasicColorCompositeSetterInterface, AnimationInterface, SequenceInterface, LocationPaintableInterface {
    private int32[,,] currentPoints;
    private CircularIndexUtil circularIndexUtil;

    // Java field initializers run after the base constructor
    private void initFieldsVectorAnimation() {
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    this.circularIndexUtil = CircularIndexUtil.createInstance(0);
    }
    

    public static VectorAnimation createVectorAnimation(int32[,] currentPoints2, BasicColor basicColor, AnimationBehavior animationBehavior) {
        int32[,,] currentPoints = new int32[1, currentPoints2.length[0], 2];
        int32 size = currentPoints2.length[0];
        for (int32 index = 0; index < size; index++) {
            currentPoints[0, index, 0] = currentPoints2[index, 0];
            currentPoints[0, index, 1] = currentPoints2[index, 1];
        }
        return new VectorAnimation(currentPoints, basicColor, animationBehavior);
    }
    

    public VectorAnimation(int32[,,] currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) {
        base(animationBehavior);
        this.initFieldsVectorAnimation();
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        bool changed = false;
        if (this.getBasicColorP() == null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        base.setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    public override void changeBasicColor(BasicColor basicColor) {
        bool changed = false;
        if (this.getChangeBasicColor() == null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        base.changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    public override void setAlpha(int32 alpha) {
        bool changed = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        base.setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    public override void setScale(float scaleX, float scaleY) {
    }
    

    public override void setMaxScale(float maxScaleX, float maxScaleY) {
    }
    

    private void updateModifiers() {
    }
    

    public override int32 getAnimationSize() {
        return this.getSize();
    }
    

    public override int32 getSize() {
        return this.currentPoints.length[0];
    }
    

    public override void setSequence(int32[] sequence) {
    }
    

    public override int32[] getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public override void nextFrame() {
        this.circularIndexUtil.next();
    }
    

    public override void previousFrame() {
        this.circularIndexUtil.previous();
    }
    

    public virtual void paintVectors(Graphics graphics, int32 x, int32 y) {
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
    

    public override void paintXY(Graphics graphics, int32 x, int32 y) {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
        this.paintVectors(graphics, x, y);
    }
    

    public override int32 getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    public override void setFrame(int32 index) {
        this.circularIndexUtil.setIndex(index);
    }
    

    public virtual int32[,] getPoints(int32 frame) {
        return this.currentPoints[frame];
    }
    

    public virtual void setPoints(int32[,,] currentPoints) {
        this.currentPoints = currentPoints;
        this.circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.length[0]);
    }
    

    public override BasicColor getBasicColorP() {
        return base.getBasicColorP();
    }
}

