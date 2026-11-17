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
// import org.allbinary.logic.math.MathUtil

public class DistanceUtil : JObject {
    private static DistanceUtil? instance;
    private static bool staticSet_instance = false;
    private static DistanceUtil staticGet_instance() {
        if (!DistanceUtil.staticSet_instance) {
            DistanceUtil.staticSet_instance = true;
            DistanceUtil.instance = new DistanceUtil();
        }
        return DistanceUtil.instance;
    }
    private MathUtil mathUtil;

    // Java field initializers run after the base constructor
    private void initFieldsDistanceUtil() {
    this.mathUtil = MathUtil.getInstance();
    }

    public DistanceUtil() {
        base();
        this.initFieldsDistanceUtil();
    }
    

    public static DistanceUtil getInstance() {
        return DistanceUtil.staticGet_instance();
    }
    

    public virtual int32 getDistance(int32 x1, int32 y1, int32 x2, int32 y2) {
        int32 dx = x1 - x2;
        int32 dy = y1 - y2;
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
}

