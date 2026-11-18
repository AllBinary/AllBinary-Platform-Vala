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
// package org.allbinary.logic.util.cache

public class BasicArrayListResetablePool : AbstractArrayListPool {
    

    public BasicArrayListResetablePool(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface) {
        base(cacheableInterfaceFactoryInterface);
    }
    

    public override void clear() {
    }
    

    public override CacheableInterface remove(JObject key) {
        int32 size = this.buffers.size();
        if (size > 0) {
            return ((CacheableInterface) this.buffers.removeAt(size - 1));
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance1(key);
        }
    }
}

