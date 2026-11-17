/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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

public class SoundThreadPool : JObject {
    private static ThreadPool? instance;
    private static bool staticSet_instance = false;
    private static ThreadPool staticGet_instance() {
        if (!SoundThreadPool.staticSet_instance) {
            SoundThreadPool.staticSet_instance = true;
            SoundThreadPool.instance = new ThreadPool("Sound", 1, ThreadPool.NORMAL_PRIORITY);
        }
        return SoundThreadPool.instance;
    }

    public SoundThreadPool() {
        base();
    }
    

    public static ThreadPool getInstance() {
        return SoundThreadPool.staticGet_instance();
    }
}

