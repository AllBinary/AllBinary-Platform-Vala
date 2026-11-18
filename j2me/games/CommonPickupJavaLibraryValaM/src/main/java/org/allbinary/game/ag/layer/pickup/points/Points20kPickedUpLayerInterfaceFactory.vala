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
// package org.allbinary.game.ag.layer.pickup.points
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.IconLayerFactory
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory
// import org.allbinary.game.layer.pickup.PickupProcessorInterface
// import org.allbinary.layer.AllBinaryLayer

public class Points20kPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, PickupProcessorInterface {
    private static PickedUpLayerInterfaceFactoryInterface? pickedUpLayerInterfaceFactoryInterface;
    private static bool staticSet_pickedUpLayerInterfaceFactoryInterface = false;
    private static PickedUpLayerInterfaceFactoryInterface staticGet_pickedUpLayerInterfaceFactoryInterface() {
        if (!Points20kPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface) {
            Points20kPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface = true;
            Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
        }
        return Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    private PointsLayerCircularStaticPool pool;

    // Java field initializers run after the base constructor
    private void initFieldsPoints20kPickedUpLayerInterfaceFactory() {
    this.pool = new PointsLayerCircularStaticPool(new PointsLayerFactory(GameConfigurationUtil.getInstance().getCompetitionValue() * 20000), 1);
    }
    

    public static void init() {
        Points20kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = new Points20kPickedUpLayerInterfaceFactory();
    }
    

    public Points20kPickedUpLayerInterfaceFactory() {
        base(PickedUpLayerTypeFactory.getInstance().POINTS, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(PointsResources.getInstance().RESOURCE_2).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(PointsResources.getInstance().RESOURCE_2).getInstance1(0));
        this.initFieldsPoints20kPickedUpLayerInterfaceFactory();
    }
    

    public virtual int32 getTotal() {
        return 1;
    }
    

    public static PickedUpLayerInterfaceFactoryInterface getInstance() {
        return Points20kPickedUpLayerInterfaceFactory.staticGet_pickedUpLayerInterfaceFactoryInterface();
    }
    

    public virtual void process(AllBinaryLayer sourceLayerInterface) {
        this.pool.visit(sourceLayerInterface);
    }
}

