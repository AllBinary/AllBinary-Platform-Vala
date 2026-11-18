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
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.math.MathUtil

public class LayerDistanceUtil : JObject {
    private static LayerDistanceUtil? instance;
    private static bool staticSet_instance = false;
    private static LayerDistanceUtil staticGet_instance() {
        if (!LayerDistanceUtil.staticSet_instance) {
            LayerDistanceUtil.staticSet_instance = true;
            LayerDistanceUtil.instance = new LayerDistanceUtil();
        }
        return LayerDistanceUtil.instance;
    }
    private MathUtil mathUtil;

    // Java field initializers run after the base constructor
    private void initFieldsLayerDistanceUtil() {
    this.mathUtil = MathUtil.getInstance();
    }

    public LayerDistanceUtil() {
        base();
        this.initFieldsLayerDistanceUtil();
    }
    

    public static LayerDistanceUtil getInstance() {
        return LayerDistanceUtil.staticGet_instance();
    }
    

    public virtual int32 getDistance(AllBinaryLayer layerInterface, AllBinaryLayer layerInterface2) {
        int32 dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth());
        int32 dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight());
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
    

    public virtual int32 getDistance3D(AllBinaryLayer layerInterface, AllBinaryLayer layerInterface2) {
        int32 dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth());
        int32 dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight());
        int32 dz = (layerInterface.getZP() + layerInterface.getHalfDepth()) - (layerInterface2.getZP() + layerInterface2.getHalfDepth());
        return this.mathUtil.sqrt((dx * dx) + (dy * dy) + (dz * dz));
    }
    

    public virtual int32 getDistanceAt(AllBinaryLayer layerInterface, GPoint point) {
        int32 dx = layerInterface.getXP() - point.getX();
        int32 dy = layerInterface.getYP() - point.getY();
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
}

