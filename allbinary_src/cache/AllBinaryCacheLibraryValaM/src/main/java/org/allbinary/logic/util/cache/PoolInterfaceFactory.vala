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

public class PoolInterfaceFactory : JObject {
    

    public PoolInterfaceFactory() {
        base();
    }
    

    public static PoolInterface getInstance3(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface, PoolType poolType, CachePolicy cachePolicy) {
        JSystem.fatal(new JException("Exception", JString.ofString("No Such PoolType: ") + JString.ofString(poolType.toString())));
    }
}

