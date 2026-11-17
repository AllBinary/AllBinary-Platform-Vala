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
// package org.allbinary.android

public class AndroidInfoFactory : JObject {
    private static AndroidInfoFactory? instance;
    private static bool staticSet_instance = false;
    private static AndroidInfoFactory staticGet_instance() {
        if (!AndroidInfoFactory.staticSet_instance) {
            AndroidInfoFactory.staticSet_instance = true;
            AndroidInfoFactory.instance = new AndroidInfoFactory();
        }
        return AndroidInfoFactory.instance;
    }
    private int32 version;

    // Java field initializers run after the base constructor
    private void initFieldsAndroidInfoFactory() {
    this.version = 8;
    }

    public AndroidInfoFactory() {
        base();
        this.initFieldsAndroidInfoFactory();
    }
    

    public static AndroidInfoFactory getInstance() {
        return AndroidInfoFactory.staticGet_instance();
    }
    

    public virtual int32 getVersion() {
        return this.version;
    }
}

