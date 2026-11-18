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
// package org.allbinary.debug

public class NoDebug : JObject, DebugInterface {
    private static DebugInterface? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static DebugInterface staticGet_SINGLETON() {
        if (!NoDebug.staticSet_SINGLETON) {
            NoDebug.staticSet_SINGLETON = true;
            NoDebug.SINGLETON = new NoDebug();
        }
        return NoDebug.SINGLETON;
    }

    public NoDebug() {
        base();
    }
    

    public static DebugInterface getInstance() {
        return NoDebug.staticGet_SINGLETON();
    }
    

    public virtual void start() {
    }
    

    public virtual void stop() {
    }
    

    public virtual int64 getMaxTime() {
        return 10000;
    }
    

    public virtual int64 getStartTime() {
        return 0;
    }
    

    public virtual bool isRunning() {
        return false;
    }
}

