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
// package org.allbinary.game.ai
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class ArtificialIntelligenceInterfaceFactoryInterfaceFactory : JObject {
    private static ArtificialIntelligenceInterfaceFactoryInterfaceFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static ArtificialIntelligenceInterfaceFactoryInterfaceFactory staticGet_SINGLETON() {
        if (!ArtificialIntelligenceInterfaceFactoryInterfaceFactory.staticSet_SINGLETON) {
            ArtificialIntelligenceInterfaceFactoryInterfaceFactory.staticSet_SINGLETON = true;
            ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON = new ArtificialIntelligenceInterfaceFactoryInterfaceFactory();
        }
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory() {
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
    }

    public ArtificialIntelligenceInterfaceFactoryInterfaceFactory() {
        base();
        this.initFieldsArtificialIntelligenceInterfaceFactoryInterfaceFactory();
    }
    

    public virtual void clear() {
        this.list = new BasicArrayListD();
    }
    

    public static ArtificialIntelligenceInterfaceFactoryInterfaceFactory getInstance() {
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.staticGet_SINGLETON();
    }
    

    public virtual ArtificialIntelligenceInterfaceFactoryInterface getInstanceFromCollection(ABHashtable hashtable) {
        int32? typeInteger = JNumber.unboxInt(hashtable.@get(((JObject) BasicAI.ID)));
        int32 type = ((int32) typeInteger);
        ArtificialIntelligenceInterfaceFactoryInterface artificialIntelligenceInterfaceFactoryInterface = ((ArtificialIntelligenceInterfaceFactoryInterface) this.list.objectArray[type - 1]);
        return artificialIntelligenceInterfaceFactoryInterface;
    }
    

    public virtual void add(ArtificialIntelligenceInterfaceFactoryInterface artificialIntelligenceInterfaceFactoryInterface) {
        this.list.add(artificialIntelligenceInterfaceFactoryInterface);
    }
}

