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
// package org.allbinary.thread

public class NullThread : JObject {
    public static Thread? NULL_THREAD;
    private static bool staticSet_NULL_THREAD = false;
    public static Thread staticGet_NULL_THREAD() {
        if (!NullThread.staticSet_NULL_THREAD) {
            NullThread.staticSet_NULL_THREAD = true;
            NullThread.NULL_THREAD = new Thread();
        }
        return NullThread.NULL_THREAD;
    }

    public NullThread() {
        base();
    }
}

