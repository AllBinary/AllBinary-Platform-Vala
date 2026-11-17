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
// package org.allbinary.logic.util.event

public class NullEventListener : JObject, EventListenerInterface {
    public static NullEventListener? NULL_EVENT_LISTENER;
    private static bool staticSet_NULL_EVENT_LISTENER = false;
    public static NullEventListener staticGet_NULL_EVENT_LISTENER() {
        if (!NullEventListener.staticSet_NULL_EVENT_LISTENER) {
            NullEventListener.staticSet_NULL_EVENT_LISTENER = true;
            NullEventListener.NULL_EVENT_LISTENER = new NullEventListener();
        }
        return NullEventListener.NULL_EVENT_LISTENER;
    }

    public NullEventListener() {
        base();
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
    }
}

