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
// package org.allbinary.logic
// import jsinterop.annotations.JsType

//ActualPlatform
public class NullUtil : JObject {
    private static NullUtil? instance;
    private static bool staticSet_instance = false;
    private static NullUtil staticGet_instance() {
        if (!NullUtil.staticSet_instance) {
            NullUtil.staticSet_instance = true;
            NullUtil.instance = new NullUtil();
        }
        return NullUtil.instance;
    }
    public JObject NULL_OBJECT;
    public string NULL_CLASS;
    public JObject[] NULL_OBJECT_ARRAY;
    public uint16[] NULL_CHAR_ARRAY;
    public int8[] NULL_BYTE_ARRAY;
    public int16[,] NULL_SHORT_ARRAY_ARRAY;
    public int32[] NULL_INT_ARRAY;
    public int32[,] NULL_INT_ARRAY_ARRAY;
    public int32[,,] NULL_INT_ARRAY_ARRAY_ARRAY;
    public float[] NULL_FLOAT_ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsNullUtil() {
    this.NULL_OBJECT = new JObject();
    this.NULL_CLASS = JObject.className(this.NULL_OBJECT);
    this.NULL_OBJECT_ARRAY = new JObject[0];
    this.NULL_CHAR_ARRAY = new uint16[0];
    this.NULL_BYTE_ARRAY = new int8[0];
    this.NULL_SHORT_ARRAY_ARRAY = new int16[0, 0];
    this.NULL_INT_ARRAY = new int32[0];
    this.NULL_INT_ARRAY_ARRAY = new int32[0, 0];
    this.NULL_INT_ARRAY_ARRAY_ARRAY = new int32[0, 0, 0];
    this.NULL_FLOAT_ARRAY = new float[0];
    }

    public NullUtil() {
        base();
        this.initFieldsNullUtil();
    }
    

    public static NullUtil getInstance() {
        return NullUtil.staticGet_instance();
    }
}

