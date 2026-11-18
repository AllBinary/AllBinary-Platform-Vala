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
// package org.allbinary.logic.math.vector
// import org.allbinary.math.NoDecimalTrigTable

public class AxisMathVectorUtil : JObject {
    private static AxisMathVectorUtil? instance;
    private static bool staticSet_instance = false;
    private static AxisMathVectorUtil staticGet_instance() {
        if (!AxisMathVectorUtil.staticSet_instance) {
            AxisMathVectorUtil.staticSet_instance = true;
            AxisMathVectorUtil.instance = new AxisMathVectorUtil();
        }
        return AxisMathVectorUtil.instance;
    }
    private NoDecimalTrigTable noDecimalTrigTable;

    // Java field initializers run after the base constructor
    private void initFieldsAxisMathVectorUtil() {
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
    }

    public AxisMathVectorUtil() {
        base();
        this.initFieldsAxisMathVectorUtil();
    }
    

    public static AxisMathVectorUtil getInstance() {
        return AxisMathVectorUtil.staticGet_instance();
    }
    

    public virtual int64 calculateX(int64 magnitude, int32 angle) {
        return magnitude * this.noDecimalTrigTable.cos(angle) / 10;
    }
    

    public virtual int64 calculateY(int64 magnitude, int32 angle) {
        return magnitude * this.noDecimalTrigTable.sin(angle) / 10;
    }
    

    public virtual int64 calculateZ(int64 magnitude, int32 otherAngle) {
        return magnitude * this.noDecimalTrigTable.sin(otherAngle) / 10;
    }
}

