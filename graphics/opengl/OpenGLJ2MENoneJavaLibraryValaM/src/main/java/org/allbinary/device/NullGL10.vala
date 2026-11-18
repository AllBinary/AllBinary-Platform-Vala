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
// package org.allbinary.device
// import javax.microedition.khronos.opengles.GL10

public class NullGL10 : JObject, GL10, GL {
    public static NullGL10? NULL_GL10;
    private static bool staticSet_NULL_GL10 = false;
    public static NullGL10 staticGet_NULL_GL10() {
        if (!NullGL10.staticSet_NULL_GL10) {
            NullGL10.staticSet_NULL_GL10 = true;
            NullGL10.NULL_GL10 = new NullGL10();
        }
        return NullGL10.NULL_GL10;
    }

    public NullGL10() {
        base();
    }
}

