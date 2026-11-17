/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic
// import java.util.Vector

public class VectorUtil : JObject {
    private static VectorUtil? instance;
    private static bool staticSet_instance = false;
    private static VectorUtil staticGet_instance() {
        if (!VectorUtil.staticSet_instance) {
            VectorUtil.staticSet_instance = true;
            VectorUtil.instance = new VectorUtil();
        }
        return VectorUtil.instance;
    }

    public VectorUtil() {
        base();
    }
    

    public static VectorUtil getInstance() {
        return VectorUtil.staticGet_instance();
    }
    

    public virtual int32 getSize(JObject anyType) {
        Vector vector = ((Vector) anyType);
        return vector.size();
    }
    

    public virtual JObject elementAt(JObject anyType, int32 index) {
        Vector vector = ((Vector) anyType);
        return vector.elementAt(index);
    }
}

