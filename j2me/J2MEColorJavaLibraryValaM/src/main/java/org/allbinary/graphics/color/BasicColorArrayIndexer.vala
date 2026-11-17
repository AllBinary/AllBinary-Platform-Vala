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
// import jsinterop.annotations.JsType
// import org.allbinary.util.CircularIndexUtil
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor

public class BasicColorArrayIndexer : JObject {
    private BasicColor[] basicColorArray;
    private CircularIndexUtil circularIndexUtil;

    // Java field initializers run after the base constructor
    private void initFieldsBasicColorArrayIndexer() {
    
    
    }
    

    public BasicColorArrayIndexer(BasicColor[] basicColorArray) {
        base();
        this.initFieldsBasicColorArrayIndexer();
        this.basicColorArray = basicColorArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.basicColorArray.length);
    }
    

    public virtual void next() {
        this.circularIndexUtil.next();
    }
    

    public virtual BasicColor @get() {
        return this.basicColorArray[this.circularIndexUtil.getIndex()];
    }
    

    public virtual BasicColor[] getBasicColorArray() {
        return this.basicColorArray;
    }
}

