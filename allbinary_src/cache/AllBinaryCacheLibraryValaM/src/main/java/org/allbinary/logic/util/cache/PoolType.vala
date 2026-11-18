/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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

public class PoolType : JObject {
    private CacheType cacheType;

    // Java field initializers run after the base constructor
    private void initFieldsPoolType() {
    
    }
    

    public PoolType(CacheType cacheType) {
        base();
        this.initFieldsPoolType();
        this.cacheType = cacheType;
    }
    

    public virtual CacheType getCacheType() {
        return this.cacheType;
    }
    

    public override string toString() {
        string POOL_TYPE = "PoolType: ";
        return JString.ofString(POOL_TYPE) + JString.ofString(this.getCacheType().toString());
    }
}

