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
// import java.io.Reader

public class NullReader : Reader {
    public static NullReader? NULL_READER;
    private static bool staticSet_NULL_READER = false;
    public static NullReader staticGet_NULL_READER() {
        if (!NullReader.staticSet_NULL_READER) {
            NullReader.staticSet_NULL_READER = true;
            NullReader.NULL_READER = new NullReader();
        }
        return NullReader.NULL_READER;
    }

    public NullReader() {
        base();
    }
    

    public override int32 read_0() {
        return -1;
    }
    

    public override int32 read_3(uint16[] cbuf, int32 off, int32 len) {
        return -1;
    }
    

    public override bool ready() {
        return false;
    }
    

    public override int64 skip(int64 n) {
        return (int64) 0;
    }
    

    public override void close() {
    }
}

