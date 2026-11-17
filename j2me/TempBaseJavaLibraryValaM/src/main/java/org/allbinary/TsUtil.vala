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
// package org.allbinary

//TempBase
public class TsUtil : JObject {
    private static TsUtil? instance;
    private static bool staticSet_instance = false;
    private static TsUtil staticGet_instance() {
        if (!TsUtil.staticSet_instance) {
            TsUtil.staticSet_instance = true;
            TsUtil.instance = new TsUtil();
        }
        return TsUtil.instance;
    }

    public TsUtil() {
        base();
    }
    

    public static TsUtil getInstance() {
        return TsUtil.staticGet_instance();
    }
    

    public virtual double longBitsToDouble(int64 bits) {
        return Double.longBitsToDouble(bits);
    }
    

    public virtual float intBitsToFloat(int32 bits) {
        return Float.intBitsToFloat(bits);
    }
    

    public virtual int32 hashCode1(JObject anyType) {
        return anyType.hashCode();
    }
    

    public virtual void waitFor(JObject any, int64 timeoutMillis) {
        JObject anyType = ((JObject) any);
        anyType.wait(timeoutMillis);
    }
    

    public virtual int32 compareTo(string a, string b) {
        return JString.compareTo(a, b);
    }
}

