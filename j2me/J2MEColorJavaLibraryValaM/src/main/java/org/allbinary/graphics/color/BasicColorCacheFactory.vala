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
// package org.allbinary.graphics.color
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

public class BasicColorCacheFactory : JObject {
    private static BasicColorCacheFactory? instance;
    private static bool staticSet_instance = false;
    private static BasicColorCacheFactory staticGet_instance() {
        if (!BasicColorCacheFactory.staticSet_instance) {
            BasicColorCacheFactory.staticSet_instance = true;
            BasicColorCacheFactory.instance = new BasicColorCacheFactory();
        }
        return BasicColorCacheFactory.instance;
    }
    private ABHashtable hashtable;

    // Java field initializers run after the base constructor
    private void initFieldsBasicColorCacheFactory() {
    this.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    public static BasicColorCacheFactory getInstance() {
        return BasicColorCacheFactory.staticGet_instance();
    }
    

    public BasicColorCacheFactory() {
        base();
        this.initFieldsBasicColorCacheFactory();
    }
    

    public virtual void add(BasicColor basicDefaultColor) {
        this.hashtable.put(JNumber.box(basicDefaultColor.intValue()), basicDefaultColor);
    }
    

    public virtual BasicColor getAndOrCreate(int32? integer) {
        BasicColor basicColor = ((BasicColor) this.hashtable.@get(JNumber.boxInt(integer)));
        if (basicColor == null) {
            basicColor = BasicColorFactory.getInstance().createInstance(((int32) integer));
            this.hashtable.put(JNumber.boxInt(integer), basicColor);
        }
        return basicColor;
    }
}

