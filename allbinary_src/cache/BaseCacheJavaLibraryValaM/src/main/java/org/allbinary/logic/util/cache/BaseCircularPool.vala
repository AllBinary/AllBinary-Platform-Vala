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
// package org.allbinary.logic.util.cache
// import jsinterop.annotations.JsType
// import org.allbinary.logic.NullUtil
// import org.allbinary.util.CircularIndexUtil
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsProperty

public class BaseCircularPool : JObject {
    public CircularIndexUtil circularIndexUtil;
    public JObject[] OBJECT_ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsBaseCircularPool() {
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
    this.OBJECT_ARRAY = NullUtil.getInstance().NULL_OBJECT_ARRAY;
    }

    public BaseCircularPool() {
        base();
        this.initFieldsBaseCircularPool();
    }
    

    public virtual JObject getNextInstance() {
        JObject anyType = this.OBJECT_ARRAY[this.circularIndexUtil.getIndex()];
        this.circularIndexUtil.next();
        return anyType;
    }
    

    public virtual void init(AllBinaryObjectFactoryInterface allBinaryObjectFactoryInterface) {
        this.circularIndexUtil.setIndex(0);
        int32 size = this.circularIndexUtil.getSize();
        for (int32 index = 0; index < size; index++) {
            this.OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance();
        }
    }
    

    public virtual JObject getInstance1(int32 index) {
        return this.OBJECT_ARRAY[index];
    }
}

