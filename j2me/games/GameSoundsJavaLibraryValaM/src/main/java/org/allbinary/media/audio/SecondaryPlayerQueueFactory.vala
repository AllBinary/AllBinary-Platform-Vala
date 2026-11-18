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

public class SecondaryPlayerQueueFactory : JObject {
    private static PlayerQueue? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static PlayerQueue staticGet_SINGLETON() {
        if (!SecondaryPlayerQueueFactory.staticSet_SINGLETON) {
            SecondaryPlayerQueueFactory.staticSet_SINGLETON = true;
            SecondaryPlayerQueueFactory.SINGLETON = new PlayerQueue(4);
        }
        return SecondaryPlayerQueueFactory.SINGLETON;
    }

    public SecondaryPlayerQueueFactory() {
        base();
    }
    

    public static PlayerQueue getInstance() {
        return SecondaryPlayerQueueFactory.staticGet_SINGLETON();
    }
}

