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
// package org.allbinary.game.layer.pickup
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class CountedPickedUpLayerInterfaceFactoryPool : JObject {
    private static CountedPickedUpLayerInterfaceFactoryPool? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static CountedPickedUpLayerInterfaceFactoryPool staticGet_SINGLETON() {
        if (!CountedPickedUpLayerInterfaceFactoryPool.staticSet_SINGLETON) {
            CountedPickedUpLayerInterfaceFactoryPool.staticSet_SINGLETON = true;
            CountedPickedUpLayerInterfaceFactoryPool.SINGLETON = new CountedPickedUpLayerInterfaceFactoryPool();
        }
        return CountedPickedUpLayerInterfaceFactoryPool.SINGLETON;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsCountedPickedUpLayerInterfaceFactoryPool() {
    
    }
    

    public CountedPickedUpLayerInterfaceFactoryPool() {
        base();
        this.initFieldsCountedPickedUpLayerInterfaceFactoryPool();
        this.list = new BasicArrayListD();
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
    

    public static CountedPickedUpLayerInterfaceFactoryPool getInstance() {
        return CountedPickedUpLayerInterfaceFactoryPool.staticGet_SINGLETON();
    }
    

    public static void init() {
        CountedPickedUpLayerInterfaceFactoryPool.SINGLETON = new CountedPickedUpLayerInterfaceFactoryPool();
    }
}

