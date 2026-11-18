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
// import org.allbinary.layer.AllBinaryLayerCircularPool

public class PickupLayerCircularStaticPool : AllBinaryLayerCircularPool {
    private static PickupLayerCircularStaticPool? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static PickupLayerCircularStaticPool staticGet_SINGLETON() {
        if (!PickupLayerCircularStaticPool.staticSet_SINGLETON) {
            PickupLayerCircularStaticPool.staticSet_SINGLETON = true;
            PickupLayerCircularStaticPool.SINGLETON = new PickupLayerCircularStaticPool();
        }
        return PickupLayerCircularStaticPool.SINGLETON;
    }
    

    public PickupLayerCircularStaticPool() {
        base();
    }
    

    public static PickupLayerCircularStaticPool getInstance() {
        return PickupLayerCircularStaticPool.staticGet_SINGLETON();
    }
    

    public virtual PickedUpLayerInterface getInstanceXYZ(PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface, int32 x, int32 y, int32 z) {
        PickupLayer pickupLayer = ((PickupLayer) this.getNextInstance());
        pickupLayer.initXYZ(x, y, z);
        pickupLayer.init(pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.getAnimationInterface());
        return pickupLayer;
    }
}

