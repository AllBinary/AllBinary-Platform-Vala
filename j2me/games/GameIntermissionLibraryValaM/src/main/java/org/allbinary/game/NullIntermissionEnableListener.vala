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
// package org.allbinary.game

public class NullIntermissionEnableListener : JObject, IntermissionEnableListenerInterface {
    private static IntermissionEnableListenerInterface? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static IntermissionEnableListenerInterface staticGet_SINGLETON() {
        if (!NullIntermissionEnableListener.staticSet_SINGLETON) {
            NullIntermissionEnableListener.staticSet_SINGLETON = true;
            NullIntermissionEnableListener.SINGLETON = new NullIntermissionEnableListener();
        }
        return NullIntermissionEnableListener.SINGLETON;
    }
    

    public static IntermissionEnableListenerInterface getInstance() {
        return NullIntermissionEnableListener.staticGet_SINGLETON();
    }
    

    public NullIntermissionEnableListener() {
        base();
    }
    

    public virtual void notifyIntermission(bool enable) {
    }
}

