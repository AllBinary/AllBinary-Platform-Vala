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
// package org.allbinary.media.audio

public class PrimaryPlayerQueueFactory : JObject {
    private static PlayerQueue? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static PlayerQueue staticGet_SINGLETON() {
        if (!PrimaryPlayerQueueFactory.staticSet_SINGLETON) {
            PrimaryPlayerQueueFactory.staticSet_SINGLETON = true;
            PrimaryPlayerQueueFactory.SINGLETON = new PlayerQueue(4);
        }
        return PrimaryPlayerQueueFactory.SINGLETON;
    }

    public PrimaryPlayerQueueFactory() {
        base();
    }
    

    public static PlayerQueue getInstance() {
        return PrimaryPlayerQueueFactory.staticGet_SINGLETON();
    }
}

