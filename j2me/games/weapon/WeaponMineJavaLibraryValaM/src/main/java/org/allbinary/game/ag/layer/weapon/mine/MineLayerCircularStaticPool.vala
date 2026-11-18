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
// package org.allbinary.game.ag.layer.weapon.mine
// import org.allbinary.game.layer.weapon.WeaponLayerCircularPool
// import org.allbinary.view.ViewPositionFactoryInterface

public class MineLayerCircularStaticPool : JObject {
    private static WeaponLayerCircularPool? WEAPON_LAYER_CIRCULAR_STATIC_POOL;
    private static bool staticSet_WEAPON_LAYER_CIRCULAR_STATIC_POOL = false;
    private static WeaponLayerCircularPool staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL() {
        if (!MineLayerCircularStaticPool.staticSet_WEAPON_LAYER_CIRCULAR_STATIC_POOL) {
            MineLayerCircularStaticPool.staticSet_WEAPON_LAYER_CIRCULAR_STATIC_POOL = true;
            MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL = new WeaponLayerCircularPool();
        }
        return MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL;
    }

    public MineLayerCircularStaticPool() {
        base();
    }
    

    public static void init(ViewPositionFactoryInterface viewPositionFactoryInterface) {
        MineCountedPickedUpLayerInterfaceFactory.init();
        MineLayerCircularStaticPool.staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL().initAllBinaryLayerCircularPool(new MineLayerFactory(viewPositionFactoryInterface), 20);
    }
    

    public static WeaponLayerCircularPool getInstance() {
        return MineLayerCircularStaticPool.staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL();
    }
}

