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
// package org.allbinary.graphics
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class PointFactory : JObject {
    private static PointFactory? instance;
    private static bool staticSet_instance = false;
    private static PointFactory staticGet_instance() {
        if (!PointFactory.staticSet_instance) {
            PointFactory.staticSet_instance = true;
            PointFactory.instance = new PointFactory();
        }
        return PointFactory.instance;
    }
    public GPoint ZERO_ZERO;

    // Java field initializers run after the base constructor
    private void initFieldsPointFactory() {
    this.ZERO_ZERO = this.createXYZ(0, 0, 0);
    }
    

    public static PointFactory getInstance() {
        return PointFactory.staticGet_instance();
    }
    

    public virtual void init() {
    }
    

    public PointFactory() {
        base();
        this.initFieldsPointFactory();
    }
    

    public virtual GPoint createXY(int32 x, int32 y) {
        return new GPoint(x, y, 0);
    }
    

    public virtual GPoint createXYZ(int32 x, int32 y, int32 z) {
        return new GPoint(x, y, z);
    }
}

