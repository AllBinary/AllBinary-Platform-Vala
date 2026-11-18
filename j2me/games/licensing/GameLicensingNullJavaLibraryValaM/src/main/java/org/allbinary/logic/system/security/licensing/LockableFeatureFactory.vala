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
// package org.allbinary.logic.system.security.licensing
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class LockableFeatureFactory : JObject {
    private static LockableFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static LockableFeatureFactory staticGet_instance() {
        if (!LockableFeatureFactory.staticSet_instance) {
            LockableFeatureFactory.staticSet_instance = true;
            LockableFeatureFactory.instance = new LockableFeatureFactory();
        }
        return LockableFeatureFactory.instance;
    }
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsLockableFeatureFactory() {
    this.list = new BasicArrayListD();
    }

    public LockableFeatureFactory() {
        base();
        this.initFieldsLockableFeatureFactory();
    }
    

    public static LockableFeatureFactory getInstance() {
        return LockableFeatureFactory.staticGet_instance();
    }
    

    public virtual BasicArrayList getList() {
        return this.list;
    }
}

