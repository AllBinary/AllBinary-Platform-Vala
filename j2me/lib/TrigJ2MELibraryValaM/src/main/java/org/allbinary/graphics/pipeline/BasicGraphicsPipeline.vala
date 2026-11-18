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
// package org.allbinary.graphics.pipeline
// import org.allbinary.graphics.GPoint
// import org.allbinary.graphics.PointFactory
// import org.allbinary.math.Angle
// import org.allbinary.math.NoDecimalTrigTable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BasicGraphicsPipeline : JObject {
    public BasicArrayList pointBasicArrayList;
    private NoDecimalTrigTable noDecimalTrigTable;

    // Java field initializers run after the base constructor
    private void initFieldsBasicGraphicsPipeline() {
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
    }
    

    public BasicGraphicsPipeline(BasicArrayList points) {
        base();
        this.initFieldsBasicGraphicsPipeline();
        this.pointBasicArrayList = points;
    }
    

    public virtual void setInitMatrix(BasicArrayList points) {
        this.pointBasicArrayList = points;
    }
    

    public virtual void createMatrix() {
    }
    

    public virtual void translate(int32 x, int32 y) {
        BasicArrayList newBasicArrayList = new BasicArrayListD();
        int32 size = this.pointBasicArrayList.size();
        PointFactory pointFactory = PointFactory.getInstance();
        GPoint secondPoint = null;
        for (int32 index = 0; index < size; index++) {
            secondPoint = ((GPoint) this.pointBasicArrayList.objectArray[index]);
            if (secondPoint.getX() != 1000) {
                newBasicArrayList.add(pointFactory.createXY(secondPoint.getX() + x, secondPoint.getY() + y));
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    public virtual void rotateToAngle(Angle angle) {
        this.rotate(((int32) (angle.getValue())));
    }
    

    private void rotate(int32 angle) {
        BasicArrayList newBasicArrayList = new BasicArrayListD();
        GPoint secondPoint = null;
        int64 y = 0;
        int64 secondX = 0;
        int64 secondY = 0;
        GPoint point = null;
        PointFactory pointFactory = PointFactory.getInstance();
        int32 size = this.pointBasicArrayList.size();
        int64 sin = 0;
        int64 cos = 0;
        for (int32 index = 0; index < size; index++) {
            secondPoint = ((GPoint) this.pointBasicArrayList.objectArray[index]);
            if (secondPoint.getX() != 1000) {
                sin = this.noDecimalTrigTable.sin(angle);
                cos = this.noDecimalTrigTable.cos(angle);
                y = ((int64) (secondPoint.getY())) * sin;
                secondX = (((int64) (secondPoint.getX())) * cos) - y;
                secondY = (((int64) (secondPoint.getX())) * sin) + (((int64) (secondPoint.getY())) * cos);
                point = pointFactory.createXY(((int32) (secondX)) / 10000, ((int32) (secondY)) / 10000);
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    public virtual void mirror(int32 width) {
        PointFactory pointFactory = PointFactory.getInstance();
        int32 halfWidth = (width >> 1);
        BasicArrayList newBasicArrayList = new BasicArrayListD();
        GPoint secondPoint = null;
        int32 newX = 0;
        GPoint point = null;
        int32 size = this.pointBasicArrayList.size();
        for (int32 index = 0; index < size; index++) {
            secondPoint = ((GPoint) this.pointBasicArrayList.objectArray[index]);
            if (secondPoint.getX() != 1000) {
                newX = 0;
                if (secondPoint.getX() > halfWidth) {
                    newX = halfWidth - (secondPoint.getX() - halfWidth);
                } else {
                    newX = halfWidth + (halfWidth - secondPoint.getX());
                }
                point = pointFactory.createXY(newX, secondPoint.getY());
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    public virtual BasicArrayList getMatrix() {
        return this.pointBasicArrayList;
    }
}

