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
// package org.allbinary.game.layer.drop
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class DropLayerFactory : JObject {
    private static DropLayerFactory? DROP_LAYER_FACTORY;
    private static bool staticSet_DROP_LAYER_FACTORY = false;
    private static DropLayerFactory staticGet_DROP_LAYER_FACTORY() {
        if (!DropLayerFactory.staticSet_DROP_LAYER_FACTORY) {
            DropLayerFactory.staticSet_DROP_LAYER_FACTORY = true;
            DropLayerFactory.DROP_LAYER_FACTORY = new DropLayerFactory();
        }
        return DropLayerFactory.DROP_LAYER_FACTORY;
    }
    private BasicArrayList list;
    private BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    private void initFieldsDropLayerFactory() {
    this.list = new BasicArrayListD();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    public DropLayerFactory() {
        base();
        this.initFieldsDropLayerFactory();
    }
    

    public virtual void clear() {
        this.list.clear();
    }
    

    public static DropLayerFactory getInstance() {
        return DropLayerFactory.staticGet_DROP_LAYER_FACTORY();
    }
    

    public virtual int32 getSize() {
        return this.list.size();
    }
    

    public virtual PickedUpLayerInterfaceFactoryInterface getRandomInstance() {
        return ((PickedUpLayerInterfaceFactoryInterface) this.basicArrayListUtil.getRandom(this.list));
    }
    

    public virtual void add(PickedUpLayerInterfaceFactoryInterface layerInterfaceFactoryInterface) {
        this.list.add(layerInterfaceFactoryInterface);
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

