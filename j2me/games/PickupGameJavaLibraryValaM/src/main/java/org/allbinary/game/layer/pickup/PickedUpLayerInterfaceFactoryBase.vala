/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.animation.Animation
// import org.allbinary.layer.AllBinaryLayer

public class PickedUpLayerInterfaceFactoryBase : JObject, PickedUpLayerInterfaceFactoryInterface {
    public static PickedUpLayerInterfaceFactoryBase? NULL_PICKED_UP_LAYER_FACTORY_BASE;
    private static bool staticSet_NULL_PICKED_UP_LAYER_FACTORY_BASE = false;
    public static PickedUpLayerInterfaceFactoryBase staticGet_NULL_PICKED_UP_LAYER_FACTORY_BASE() {
        if (!PickedUpLayerInterfaceFactoryBase.staticSet_NULL_PICKED_UP_LAYER_FACTORY_BASE) {
            PickedUpLayerInterfaceFactoryBase.staticSet_NULL_PICKED_UP_LAYER_FACTORY_BASE = true;
            PickedUpLayerInterfaceFactoryBase.NULL_PICKED_UP_LAYER_FACTORY_BASE = new PickedUpLayerInterfaceFactoryBase();
        }
        return PickedUpLayerInterfaceFactoryBase.NULL_PICKED_UP_LAYER_FACTORY_BASE;
    }

    public PickedUpLayerInterfaceFactoryBase() {
        base();
    }
    

    public virtual AllBinaryLayer getIconLayer() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual Animation getAnimationInterface() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual PickedUpLayerType getPickedUpLayerType() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

