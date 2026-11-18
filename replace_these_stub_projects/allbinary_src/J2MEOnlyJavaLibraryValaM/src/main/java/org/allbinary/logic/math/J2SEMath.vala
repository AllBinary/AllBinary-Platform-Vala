/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.math

public class J2SEMath : JObject {
    private static J2SEMath? instance;
    private static bool staticSet_instance = false;
    private static J2SEMath staticGet_instance() {
        if (!J2SEMath.staticSet_instance) {
            J2SEMath.staticSet_instance = true;
            J2SEMath.instance = new J2SEMath();
        }
        return J2SEMath.instance;
    }

    public J2SEMath() {
        base();
    }
    

    public static J2SEMath getInstance() {
        return J2SEMath.staticGet_instance();
    }
    

    public virtual int32 round(float value) {
        return ((int32) JMath.toInt32(value));
    }
    

    public virtual float abs(float value) {
        return ((value < 0.0f) ? -value : value);
    }
    

    public virtual double absdouble(double value) {
        return ((value < 0.0) ? -value : value);
    }
}

