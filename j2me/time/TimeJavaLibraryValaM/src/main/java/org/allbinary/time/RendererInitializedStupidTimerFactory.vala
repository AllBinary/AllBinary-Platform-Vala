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
// package org.allbinary.time

public class RendererInitializedStupidTimerFactory : JObject {
    private static StupidTimer? instance;
    private static bool staticSet_instance = false;
    private static StupidTimer staticGet_instance() {
        if (!RendererInitializedStupidTimerFactory.staticSet_instance) {
            RendererInitializedStupidTimerFactory.staticSet_instance = true;
            RendererInitializedStupidTimerFactory.instance = new StupidTimer();
        }
        return RendererInitializedStupidTimerFactory.instance;
    }

    public RendererInitializedStupidTimerFactory() {
        base();
    }
    

    public static StupidTimer getInstance() {
        return RendererInitializedStupidTimerFactory.staticGet_instance();
    }
}

