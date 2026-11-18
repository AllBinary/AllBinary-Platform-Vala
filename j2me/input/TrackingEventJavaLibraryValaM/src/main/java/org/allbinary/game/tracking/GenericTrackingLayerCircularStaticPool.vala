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
// package org.allbinary.game.tracking
// import org.allbinary.layer.AllBinaryLayerCircularPool

public class GenericTrackingLayerCircularStaticPool : AllBinaryLayerCircularPool {
    private static GenericTrackingLayerCircularStaticPool? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static GenericTrackingLayerCircularStaticPool staticGet_SINGLETON() {
        if (!GenericTrackingLayerCircularStaticPool.staticSet_SINGLETON) {
            GenericTrackingLayerCircularStaticPool.staticSet_SINGLETON = true;
            GenericTrackingLayerCircularStaticPool.SINGLETON = new GenericTrackingLayerCircularStaticPool();
        }
        return GenericTrackingLayerCircularStaticPool.SINGLETON;
    }
    

    public GenericTrackingLayerCircularStaticPool() {
        base();
    }
    

    public static GenericTrackingLayerCircularStaticPool getInstance() {
        return GenericTrackingLayerCircularStaticPool.staticGet_SINGLETON();
    }
}

