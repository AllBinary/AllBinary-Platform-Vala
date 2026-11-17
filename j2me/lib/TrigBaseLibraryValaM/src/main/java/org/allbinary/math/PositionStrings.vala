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
// package org.allbinary.math
// import jsinterop.annotations.JsType
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

public class PositionStrings : JObject {
    private static PositionStrings? instance;
    private static bool staticSet_instance = false;
    private static PositionStrings staticGet_instance() {
        if (!PositionStrings.staticSet_instance) {
            PositionStrings.staticSet_instance = true;
            PositionStrings.instance = new PositionStrings();
        }
        return PositionStrings.instance;
    }
    public string X;
    public string Y;
    public string X_LABEL;
    public string Y_LABEL;
    public string Z_LABEL;
    public string DX_LABEL;
    public string DY_LABEL;
    public string DZ_LABEL;

    // Java field initializers run after the base constructor
    private void initFieldsPositionStrings() {
    this.X = "x";
    this.Y = "y";
    this.X_LABEL = "x: ";
    this.Y_LABEL = "y: ";
    this.Z_LABEL = "z: ";
    this.DX_LABEL = "dx: ";
    this.DY_LABEL = "dy: ";
    this.DZ_LABEL = "dz: ";
    }

    public PositionStrings() {
        base();
        this.initFieldsPositionStrings();
    }
    

    public static PositionStrings getInstance() {
        return PositionStrings.staticGet_instance();
    }
}

