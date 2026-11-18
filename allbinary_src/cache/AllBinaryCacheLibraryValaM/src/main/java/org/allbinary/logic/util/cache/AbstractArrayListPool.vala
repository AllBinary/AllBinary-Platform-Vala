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
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class AbstractArrayListPool : JObject, PoolInterface, CacheInterface {
    public CommonStrings commonStrings;
    public BasicArrayList buffers;
    public CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface;

    // Java field initializers run after the base constructor
    private void initFieldsAbstractArrayListPool() {
    this.commonStrings = CommonStrings.getInstance();
    this.buffers = new BasicArrayListD();
    
    }
    

    public AbstractArrayListPool(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface) {
        base();
        this.initFieldsAbstractArrayListPool();
        this.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface;
    }
    

    public virtual void clear() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual CacheableInterface remove(JObject key) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void add(CacheableInterface cacheableInterface) {
        this.buffers.add(cacheableInterface);
    }
    

    public virtual void addArray(CacheableInterface[] cacheableInterfaces) {
        for (int32 index = 0; index < cacheableInterfaces.length; index++) {
            this.buffers.add(cacheableInterfaces[index]);
        }
    }
}

