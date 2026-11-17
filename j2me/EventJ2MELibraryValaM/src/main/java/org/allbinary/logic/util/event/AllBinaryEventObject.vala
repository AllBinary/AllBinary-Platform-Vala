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
// package org.allbinary.logic.util.event
// import jsinterop.annotations.JsType
// import org.allbinary.logic.NullUtil
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class AllBinaryEventObject : JObject {
    public static AllBinaryEventObject? NULL_EVENT;
    private static bool staticSet_NULL_EVENT = false;
    public static AllBinaryEventObject staticGet_NULL_EVENT() {
        if (!AllBinaryEventObject.staticSet_NULL_EVENT) {
            AllBinaryEventObject.staticSet_NULL_EVENT = true;
            AllBinaryEventObject.NULL_EVENT = new AllBinaryEventObject(NullUtil.getInstance().NULL_OBJECT);
        }
        return AllBinaryEventObject.NULL_EVENT;
    }
    private JObject source;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryEventObject() {
    
    }
    

    public AllBinaryEventObject(JObject anyType) {
        base();
        this.initFieldsAllBinaryEventObject();
        this.source = anyType;
    }
    

    public virtual JObject getSource() {
        return this.source;
    }
    

    public virtual void setSource(JObject source) {
        this.source = source;
    }
}

