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
// package org.allbinary.logic.io
// import java.io.Closeable
// import java.io.IOException

public class NullCloseable : JObject, Closeable {
    public static NullCloseable? NULL_CLOSEABLE;
    private static bool staticSet_NULL_CLOSEABLE = false;
    public static NullCloseable staticGet_NULL_CLOSEABLE() {
        if (!NullCloseable.staticSet_NULL_CLOSEABLE) {
            NullCloseable.staticSet_NULL_CLOSEABLE = true;
            NullCloseable.NULL_CLOSEABLE = new NullCloseable();
        }
        return NullCloseable.NULL_CLOSEABLE;
    }

    public NullCloseable() {
        base();
    }
    

    public virtual void close() {
    }
}

