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
// package org.allbinary.canvas

public class Processor : JObject {
    private static Processor? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static Processor staticGet_SINGLETON() {
        if (!Processor.staticSet_SINGLETON) {
            Processor.staticSet_SINGLETON = true;
            Processor.SINGLETON = new Processor();
        }
        return Processor.SINGLETON;
    }

    public Processor() {
        base();
    }
    

    public static Processor getInstance() {
        return Processor.staticGet_SINGLETON();
    }
    

    public virtual void process() {
    }
    

    public virtual void processt(int64 timeDelta) {
    }
}

