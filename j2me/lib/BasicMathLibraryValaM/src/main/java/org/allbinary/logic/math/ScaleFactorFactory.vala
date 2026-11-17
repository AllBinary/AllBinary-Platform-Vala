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
// package org.allbinary.logic.math

public class ScaleFactorFactory : JObject {
    private static ScaleFactorFactory? instance;
    private static bool staticSet_instance = false;
    private static ScaleFactorFactory staticGet_instance() {
        if (!ScaleFactorFactory.staticSet_instance) {
            ScaleFactorFactory.staticSet_instance = true;
            ScaleFactorFactory.instance = new ScaleFactorFactory();
        }
        return ScaleFactorFactory.instance;
    }
    public int32 DEFAULT_SCALE_FACTOR;
    public int32 DEFAULT_SCALE_VALUE;

    // Java field initializers run after the base constructor
    private void initFieldsScaleFactorFactory() {
    this.DEFAULT_SCALE_FACTOR = 10;
    this.DEFAULT_SCALE_VALUE = 1024;
    }

    public ScaleFactorFactory() {
        base();
        this.initFieldsScaleFactorFactory();
    }
    

    public static ScaleFactorFactory getInstance() {
        return ScaleFactorFactory.staticGet_instance();
    }
}

