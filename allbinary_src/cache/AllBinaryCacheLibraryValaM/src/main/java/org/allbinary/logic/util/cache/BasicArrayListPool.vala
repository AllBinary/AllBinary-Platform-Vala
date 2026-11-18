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
// import org.allbinary.util.BasicArrayList

public class BasicArrayListPool : AbstractArrayListPool {
    

    public BasicArrayListPool(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface) {
        base(cacheableInterfaceFactoryInterface);
    }
    

    public override void clear() {
        this.buffers.clear();
    }
    

    public override CacheableInterface remove(JObject key) {
        int32 size = this.buffers.size();
        if (size > 0) {
            return ((CacheableInterface) this.buffers.removeAt(size - 1));
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance1(key);
        }
    }
    

    public virtual void addAll(BasicArrayList usedList) {
        for (int32 index = usedList.size(); --index >= 0; ) {
            CacheableInterface anyType = ((CacheableInterface) usedList.objectArray[index]);
            this.add(anyType);
        }
        usedList.clear();
    }
    

    public virtual void releaseUsedBackToPool(BasicArrayList usedList) {
        for (int32 index = usedList.size(); --index >= 0; ) {
            BasicArrayListCacheable list = ((BasicArrayListCacheable) usedList.objectArray[index]);
            if (list.size() == 0) {
                usedList.removeAt(index);
                this.add(list);
            }
        }
    }
}

