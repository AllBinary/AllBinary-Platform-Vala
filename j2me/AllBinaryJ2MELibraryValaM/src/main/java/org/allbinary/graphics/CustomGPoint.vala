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
// package org.allbinary.graphics

public class CustomGPoint : GPoint {
    public static CustomGPoint? NULL_CUSTOM_POINT;
    private static bool staticSet_NULL_CUSTOM_POINT = false;
    public static CustomGPoint staticGet_NULL_CUSTOM_POINT() {
        if (!CustomGPoint.staticSet_NULL_CUSTOM_POINT) {
            CustomGPoint.staticSet_NULL_CUSTOM_POINT = true;
            CustomGPoint.NULL_CUSTOM_POINT = new CustomGPoint(0, 0, 0);
        }
        return CustomGPoint.NULL_CUSTOM_POINT;
    }
    private int32 cx;
    private int32 cy;
    private int32 cz;

    // Java field initializers run after the base constructor
    private void initFieldsCustomGPoint() {
    this.cx = 0;
    this.cy = 0;
    this.cz = 0;
    }
    

    public static CustomGPoint getInstance1(GPoint point) {
        return new CustomGPoint(point.getX(), point.getY(), point.getZ());
    }
    

    public static CustomGPoint getInstance3(int32 x, int32 y) {
        return new CustomGPoint(x, y, 3);
    }
    

    public CustomGPoint(int32 x, int32 y, int32 z) {
        base(x, y, z);
        this.initFieldsCustomGPoint();
    }
    

    public virtual void setX(int32 x) {
        this.cx = x;
    }
    

    public override int32 getX() {
        return this.cx;
    }
    

    public virtual void setY(int32 y) {
        this.cy = y;
    }
    

    public override int32 getY() {
        return this.cy;
    }
    

    public virtual void setZ(int32 z) {
        this.cz = z;
    }
    

    public override int32 getZ() {
        return this.cz;
    }
}

