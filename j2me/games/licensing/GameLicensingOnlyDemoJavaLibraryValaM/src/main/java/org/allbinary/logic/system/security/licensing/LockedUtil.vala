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
// package org.allbinary.logic.system.security.licensing

public class LockedUtil : JObject, LockedUtilInterface {
    private static LockedUtil? instance;
    private static bool staticSet_instance = false;
    private static LockedUtil staticGet_instance() {
        if (!LockedUtil.staticSet_instance) {
            LockedUtil.staticSet_instance = true;
            LockedUtil.instance = new LockedUtil();
        }
        return LockedUtil.instance;
    }

    public LockedUtil() {
        base();
    }
    

    public static LockedUtil getInstance() {
        return LockedUtil.staticGet_instance();
    }
    

    public virtual bool isLocked() {
        return true;
    }
    

    public virtual bool isLockedFeature(LockableFeature lockableFeatrue) {
        return true;
    }
}

