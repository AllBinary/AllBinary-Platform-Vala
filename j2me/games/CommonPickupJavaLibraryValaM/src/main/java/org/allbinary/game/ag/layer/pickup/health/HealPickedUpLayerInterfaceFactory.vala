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
// package org.allbinary.game.ag.layer.pickup.health
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.IconLayerFactory
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory
// import org.allbinary.game.layer.pickup.PickupProcessorInterface
// import org.allbinary.layer.AllBinaryLayer

public class HealPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, PickupProcessorInterface {
    private static PickedUpLayerInterfaceFactoryInterface? pickedUpLayerInterfaceFactoryInterface;
    private static bool staticSet_pickedUpLayerInterfaceFactoryInterface = false;
    private static PickedUpLayerInterfaceFactoryInterface staticGet_pickedUpLayerInterfaceFactoryInterface() {
        if (!HealPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface) {
            HealPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface = true;
            HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
        }
        return HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    private HealLayerCircularStaticPool pool;

    // Java field initializers run after the base constructor
    private void initFieldsHealPickedUpLayerInterfaceFactory() {
    this.pool = new HealLayerCircularStaticPool(new HealLayerFactory(), 1);
    }
    

    public static void init() {
        HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = new HealPickedUpLayerInterfaceFactory();
    }
    

    public HealPickedUpLayerInterfaceFactory() {
        base(PickedUpLayerTypeFactory.getInstance().HEAL, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(HealthResources.getInstance().RESOURCE).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(HealthResources.getInstance().RESOURCE).getInstance1(0));
        this.initFieldsHealPickedUpLayerInterfaceFactory();
    }
    

    public virtual int32 getTotal() {
        return 1;
    }
    

    public static PickedUpLayerInterfaceFactoryInterface getInstance() {
        return HealPickedUpLayerInterfaceFactory.staticGet_pickedUpLayerInterfaceFactoryInterface();
    }
    

    public virtual void process(AllBinaryLayer sourceLayerInterface) {
        this.pool.visit(sourceLayerInterface);
    }
}

