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
// import jsinterop.annotations.JsConstructor

public class Angle : JObject {
    private int16 value;

    // Java field initializers run after the base constructor
    private void initFieldsAngle() {
    
    }
    

    public Angle(int16 angle) {
        base();
        this.initFieldsAngle();
        this.value = angle;
    }
    

    public virtual int16 getValue() {
        return this.value;
    }
}

