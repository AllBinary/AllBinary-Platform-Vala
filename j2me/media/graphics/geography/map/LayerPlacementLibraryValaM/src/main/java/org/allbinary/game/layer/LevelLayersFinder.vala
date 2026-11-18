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
// package org.allbinary.game.layer
// import java.util.Enumeration
// import org.allbinary.layer.Layer
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.EnumerationUtil

public class LevelLayersFinder : JObject {
    private static LevelLayersFinder? instance;
    private static bool staticSet_instance = false;
    private static LevelLayersFinder staticGet_instance() {
        if (!LevelLayersFinder.staticSet_instance) {
            LevelLayersFinder.staticSet_instance = true;
            LevelLayersFinder.instance = new LevelLayersFinder();
        }
        return LevelLayersFinder.instance;
    }
    private EnumerationUtil enumerationUtil;

    // Java field initializers run after the base constructor
    private void initFieldsLevelLayersFinder() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    }

    public LevelLayersFinder() {
        base();
        this.initFieldsLevelLayersFinder();
    }
    

    public static LevelLayersFinder getInstance() {
        return LevelLayersFinder.staticGet_instance();
    }
    

    public virtual BasicArrayList @get(ABHashtable hashtable) {
        SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        BasicArrayList list = new BasicArrayListD();
        Enumeration enumeration = hashtable.keys();
        ABHashtable layerHashtableCanBeNull = null;
        int32? integerCanBeNull = null;
        int32? cachedIntegerCanBeNull = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            layerHashtableCanBeNull = ((ABHashtable) hashtable.@get(((JObject) this.enumerationUtil.nextElement(enumeration))));
            integerCanBeNull = JNumber.unboxInt(layerHashtableCanBeNull.@get(((JObject) Layer.ID)));
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt(((int32) integerCanBeNull));
            if (!list.contains(JNumber.boxInt(cachedIntegerCanBeNull))) {
                list.add(JNumber.boxInt(cachedIntegerCanBeNull));
            }
        }
        return list;
    }
}

