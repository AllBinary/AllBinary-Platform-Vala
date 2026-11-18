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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList

public class CountedPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory, CountedPickedUpLayerInterfaceFactoryInterface, PickedUpLayerInterfaceFactoryInterface, LayerInterfaceFactoryInterface {
    public static CountedPickedUpLayerInterfaceFactory? NULL_COUNTED_PICKUP_LAYER_FACTORY;
    private static bool staticSet_NULL_COUNTED_PICKUP_LAYER_FACTORY = false;
    public static CountedPickedUpLayerInterfaceFactory staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY() {
        if (!CountedPickedUpLayerInterfaceFactory.staticSet_NULL_COUNTED_PICKUP_LAYER_FACTORY) {
            CountedPickedUpLayerInterfaceFactory.staticSet_NULL_COUNTED_PICKUP_LAYER_FACTORY = true;
            CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY = new CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer.NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance1(0));
        }
        return CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    }
    private int32 id;

    // Java field initializers run after the base constructor
    private void initFieldsCountedPickedUpLayerInterfaceFactory() {
    
    }
    

    public CountedPickedUpLayerInterfaceFactory(PickedUpLayerType pickeUpLayerType, IconLayer iconLayer, Animation animationInterface) {
        base(pickeUpLayerType, iconLayer, animationInterface);
        this.initFieldsCountedPickedUpLayerInterfaceFactory();
        BasicArrayList list = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        this.id = list.size();
        list.add(this);
    }
    

    public virtual AllBinaryLayer getNextInstance(ABHashtable hashtable, int32 x, int32 y, int32 z) {
        JSystem.fatal(new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED));
    }
    

    public virtual int32 getTotal() {
        return -1;
    }
    

    public virtual int32 getId() {
        return this.id;
    }
}

