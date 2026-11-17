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
// import jsinterop.annotations.JsType
// import org.allbinary.string.CommonStrings
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class IndexedBasicArrayListCache : BaseBasicArrayListCache, CacheInterface {
    public CommonStrings commonStrings;
    private int32 size;
    public int32 index;

    // Java field initializers run after the base constructor
    private void initFieldsIndexedBasicArrayListCache() {
    this.commonStrings = CommonStrings.getInstance();
    this.size = 0;
    this.index = 0;
    }
    

    public static IndexedBasicArrayListCache createCache(int32 size) {
        IndexedBasicArrayListCache indexedBasicArrayListCache = new IndexedBasicArrayListCache();
        indexedBasicArrayListCache.init(size);
        return indexedBasicArrayListCache;
    }
    

    public IndexedBasicArrayListCache() {
        base();
        this.initFieldsIndexedBasicArrayListCache();
    }
    

    public virtual void init(int32 size) {
        if (this.size < size) {
            this.list.ensureCapacity(size);
            for (int32 index = size - 1; index >= this.size; index--) {
                this.addDefault();
            }
            this.size = size;
        }
    }
    

    public virtual JObject getAt(int32 index) {
        return this.list.objectArray[index];
    }
    

    public virtual void addDefault() {
    }
    

    public virtual void addObject(JObject anyType) {
        this.list.add(anyType);
    }
    

    public virtual void add(CacheableInterface cacheableInterface) {
        this.list.add(cacheableInterface);
    }
    

    public virtual void addArray(CacheableInterface[] cacheableInterfaces) {
        JSystem.fatal(new JException("Exception", "No Imple"));
    }
    

    public virtual void clear() {
        this.index = 0;
    }
}

