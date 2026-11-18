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

public class Points30kPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, PickupProcessorInterface {
    private static PickedUpLayerInterfaceFactoryInterface? pickedUpLayerInterfaceFactoryInterface;
    private static bool staticSet_pickedUpLayerInterfaceFactoryInterface = false;
    private static PickedUpLayerInterfaceFactoryInterface staticGet_pickedUpLayerInterfaceFactoryInterface() {
        if (!Points30kPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface) {
            Points30kPickedUpLayerInterfaceFactory.staticSet_pickedUpLayerInterfaceFactoryInterface = true;
            Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
        }
        return Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    private PointsLayerCircularStaticPool pool;

    // Java field initializers run after the base constructor
    private void initFieldsPoints30kPickedUpLayerInterfaceFactory() {
    this.pool = new PointsLayerCircularStaticPool(new PointsLayerFactory(GameConfigurationUtil.getInstance().getCompetitionValue() * 30000), 1);
    }
    

    public static void init() {
        Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = new Points30kPickedUpLayerInterfaceFactory();
    }
    

    public Points30kPickedUpLayerInterfaceFactory() {
        base(PickedUpLayerTypeFactory.getInstance().POINTS, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(PointsResources.getInstance().RESOURCE_3).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(PointsResources.getInstance().RESOURCE_3).getInstance1(0));
        this.initFieldsPoints30kPickedUpLayerInterfaceFactory();
    }
    

    public virtual int32 getTotal() {
        return 1;
    }
    

    public static PickedUpLayerInterfaceFactoryInterface getInstance() {
        return Points30kPickedUpLayerInterfaceFactory.staticGet_pickedUpLayerInterfaceFactoryInterface();
    }
    

    public virtual void process(AllBinaryLayer sourceLayerInterface) {
        this.pool.visit(sourceLayerInterface);
    }
}

