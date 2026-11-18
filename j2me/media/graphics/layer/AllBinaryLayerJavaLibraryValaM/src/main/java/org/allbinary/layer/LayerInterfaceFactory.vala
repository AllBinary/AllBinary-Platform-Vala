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
// package org.allbinary.layer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class LayerInterfaceFactory : JObject {
    private static LayerInterfaceFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static LayerInterfaceFactory staticGet_SINGLETON() {
        if (!LayerInterfaceFactory.staticSet_SINGLETON) {
            LayerInterfaceFactory.staticSet_SINGLETON = true;
            LayerInterfaceFactory.SINGLETON = new LayerInterfaceFactory();
        }
        return LayerInterfaceFactory.SINGLETON;
    }
    public LogUtil logUtil;
    private BasicArrayList list;
    private string HASHTABLE_LABEL;

    // Java field initializers run after the base constructor
    private void initFieldsLayerInterfaceFactory() {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.HASHTABLE_LABEL = "Hashtable: ";
    }

    public LayerInterfaceFactory() {
        base();
        this.initFieldsLayerInterfaceFactory();
    }
    

    public static LayerInterfaceFactory getInstance() {
        return LayerInterfaceFactory.staticGet_SINGLETON();
    }
    

    public virtual void init() {
        this.list = new BasicArrayListD();
    }
    

    public virtual AllBinaryLayer getNexInstance(ABHashtable hashtable, int32 x, int32 y, int32 z) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(new StringMaker().append(this.HASHTABLE_LABEL).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, commonStrings.GET_INSTANCE);
        int32? typeInteger = JNumber.unboxInt(hashtable.@get(((JObject) Layer.ID)));
        LayerInterfaceFactoryInterface layerInterfaceFactoryInterface = ((LayerInterfaceFactoryInterface) this.list.objectArray[((int32) typeInteger) - 1]);
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z);
    }
    

    public virtual void add(LayerInterfaceFactoryInterface layerInterfaceFactoryInterface) {
        this.list.add(layerInterfaceFactoryInterface);
    }
}

