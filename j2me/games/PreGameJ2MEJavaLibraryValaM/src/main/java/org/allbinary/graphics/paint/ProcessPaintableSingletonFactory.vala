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
// package org.allbinary.graphics.paint

public class ProcessPaintableSingletonFactory : JObject {
    private static ProcessPaintable? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static ProcessPaintable staticGet_SINGLETON() {
        if (!ProcessPaintableSingletonFactory.staticSet_SINGLETON) {
            ProcessPaintableSingletonFactory.staticSet_SINGLETON = true;
            ProcessPaintableSingletonFactory.SINGLETON = new ProcessPaintable();
        }
        return ProcessPaintableSingletonFactory.SINGLETON;
    }
    

    public ProcessPaintableSingletonFactory() {
        base();
    }
    

    public static ProcessPaintable getInstance() {
        return ProcessPaintableSingletonFactory.staticGet_SINGLETON();
    }
}

