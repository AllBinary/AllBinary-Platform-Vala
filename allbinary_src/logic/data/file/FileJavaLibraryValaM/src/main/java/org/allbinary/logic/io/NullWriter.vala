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
// import java.io.Writer

public class NullWriter : Writer {
    public static NullWriter? NULL_WRITER;
    private static bool staticSet_NULL_WRITER = false;
    public static NullWriter staticGet_NULL_WRITER() {
        if (!NullWriter.staticSet_NULL_WRITER) {
            NullWriter.staticSet_NULL_WRITER = true;
            NullWriter.NULL_WRITER = new NullWriter();
        }
        return NullWriter.NULL_WRITER;
    }

    public NullWriter() {
        base();
    }
    

    public override void write_1_int(int32 c) {
    }
    

    public override void write_3_charAintint(uint16[] cbuf, int32 off, int32 len) {
    }
    

    public override void write_1_String(string str) {
    }
    

    public override void write_3_Stringintint(string str, int32 off, int32 len) {
    }
    

    public override void flush() {
    }
    

    public override void close() {
    }
}

