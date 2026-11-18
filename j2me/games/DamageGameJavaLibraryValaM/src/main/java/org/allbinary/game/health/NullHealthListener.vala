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
// package org.allbinary.game.health

public class NullHealthListener : JObject, HealthListenerInterface {
    public static NullHealthListener? NULL_HEALTH_LISTENER;
    private static bool staticSet_NULL_HEALTH_LISTENER = false;
    public static NullHealthListener staticGet_NULL_HEALTH_LISTENER() {
        if (!NullHealthListener.staticSet_NULL_HEALTH_LISTENER) {
            NullHealthListener.staticSet_NULL_HEALTH_LISTENER = true;
            NullHealthListener.NULL_HEALTH_LISTENER = new NullHealthListener();
        }
        return NullHealthListener.NULL_HEALTH_LISTENER;
    }

    public NullHealthListener() {
        base();
    }
    

    public virtual void onHealthChange() {
    }
}

