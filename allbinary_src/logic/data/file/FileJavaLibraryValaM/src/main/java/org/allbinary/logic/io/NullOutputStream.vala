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
// import java.io.IOException
// import java.io.OutputStream

public class NullOutputStream : OutputStream {
    public static NullOutputStream? NULL_OUTPUT_STREAM;
    private static bool staticSet_NULL_OUTPUT_STREAM = false;
    public static NullOutputStream staticGet_NULL_OUTPUT_STREAM() {
        if (!NullOutputStream.staticSet_NULL_OUTPUT_STREAM) {
            NullOutputStream.staticSet_NULL_OUTPUT_STREAM = true;
            NullOutputStream.NULL_OUTPUT_STREAM = new NullOutputStream();
        }
        return NullOutputStream.NULL_OUTPUT_STREAM;
    }

    public NullOutputStream() {
        base();
    }
    

    public override void write_1(int32 b) {
    }
    

    public override void write_3(int8[] b, int32 off, int32 len) {
    }
    

    public override void close() {
    }
}

