/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic
// import jsinterop.annotations.JsType

public class ABSystemWrapper : JObject {
    private static ABSystemWrapper? instance;
    private static bool staticSet_instance = false;
    private static ABSystemWrapper staticGet_instance() {
        if (!ABSystemWrapper.staticSet_instance) {
            ABSystemWrapper.staticSet_instance = true;
            ABSystemWrapper.instance = new ABSystemWrapper();
        }
        return ABSystemWrapper.instance;
    }

    public ABSystemWrapper() {
        base();
    }
    

    public static ABSystemWrapper getInstance() {
        return ABSystemWrapper.staticGet_instance();
    }
    

    public virtual void arraycopy(JObject src, int32 srcPos, JObject dest, int32 destPos, int32 length) {
        JSystem.arraycopyUnknown(src, srcPos, dest, destPos, length);
    }
    

    public virtual int64 currentTimeMillis() {
        return JSystem.currentTimeMillis();
    }
}

