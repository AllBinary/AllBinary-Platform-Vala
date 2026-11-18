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
// package org.allbinary.game.part
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory
// import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryPool
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class MakeCountedPartsSingletonArrayFactory : JObject {
    private static MakeCountedPartsSingletonArrayFactory? instance;
    private static bool staticSet_instance = false;
    private static MakeCountedPartsSingletonArrayFactory staticGet_instance() {
        if (!MakeCountedPartsSingletonArrayFactory.staticSet_instance) {
            MakeCountedPartsSingletonArrayFactory.staticSet_instance = true;
            MakeCountedPartsSingletonArrayFactory.instance = new MakeCountedPartsSingletonArrayFactory();
        }
        return MakeCountedPartsSingletonArrayFactory.instance;
    }
    public LogUtil logUtil;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsMakeCountedPartsSingletonArrayFactory() {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
    }

    public MakeCountedPartsSingletonArrayFactory() {
        base();
        this.initFieldsMakeCountedPartsSingletonArrayFactory();
    }
    

    public static MakeCountedPartsSingletonArrayFactory getInstance() {
        return MakeCountedPartsSingletonArrayFactory.staticGet_instance();
    }
    

    public virtual PartInterface[] getUpdated(PartInterface[] partInterfaceArray) {
        this.list = new BasicArrayListD();
        for (int32 index = 0; index < partInterfaceArray.length; index++) {
            this.list.add(partInterfaceArray[index]);
        }
        BasicArrayList countedBasicArrayList = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        CountedPickedUpLayerInterfaceFactory layerInterfaceFactoryInterface = null;
        int32 size = countedBasicArrayList.size();
        for (int32 index = 0; index < size; index++) {
            layerInterfaceFactoryInterface = ((CountedPickedUpLayerInterfaceFactory) countedBasicArrayList.objectArray[index]);
            this.list.add(new CountedLayerInterfaceFactoryPart(0, layerInterfaceFactoryInterface));
        }
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Total Parts: ");
        stringBuffer.appendint(this.list.size());
        stringBuffer.append(" Counted: ");
        stringBuffer.appendint(countedBasicArrayList.size());
        CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        PartInterface[] newPartInterfaceArray = new PartInterface[this.list.size()];
        int32 newSize = newPartInterfaceArray.length;
        for (int32 index = 0; index < newSize; index++) {
            newPartInterfaceArray[index] = ((PartInterface) this.list.@get(index));
        }
        return newPartInterfaceArray;
    }
}

