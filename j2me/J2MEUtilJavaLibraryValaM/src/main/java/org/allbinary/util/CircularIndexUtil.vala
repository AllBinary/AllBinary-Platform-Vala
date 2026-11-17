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
// package org.allbinary.util
// import jsinterop.annotations.JsType
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import jsinterop.annotations.JsMethod
// import jsinterop.annotations.JsConstructor
// import jsinterop.annotations.JsProperty

public class CircularIndexUtil : JObject {
    public static CircularIndexUtil? NULL_CIRCULAR_INDEX_UTIL;
    private static bool staticSet_NULL_CIRCULAR_INDEX_UTIL = false;
    public static CircularIndexUtil staticGet_NULL_CIRCULAR_INDEX_UTIL() {
        if (!CircularIndexUtil.staticSet_NULL_CIRCULAR_INDEX_UTIL) {
            CircularIndexUtil.staticSet_NULL_CIRCULAR_INDEX_UTIL = true;
            CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL = new CircularIndexUtil(0, 0);
        }
        return CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
    }
    private int32 index;
    private int32 lastIndex;
    private int32 size;

    // Java field initializers run after the base constructor
    private void initFieldsCircularIndexUtil() {
    this.index = 0;
    this.lastIndex = 0;
    this.size = 0;
    }
    

    public CircularIndexUtil(int32 index, int32 size) {
        base();
        this.initFieldsCircularIndexUtil();
        this.setSize(size);
        this.setIndex(index);
    }
    

    public virtual int32 next() {
        if (this.index >= this.lastIndex) {
            this.index = 0;
        } else {
            this.index++;
        }
        return this.index;
    }
    

    public virtual int32 previous() {
        if (this.index < 1) {
            this.index = this.lastIndex;
        } else {
            this.index--;
        }
        return this.index;
    }
    

    public virtual void setIndex(int32 index) {
        if (index > this.lastIndex) {
            return;
        }
        this.index = index;
    }
    

    public virtual int32 getIndex() {
        return this.index;
    }
    

    public static CircularIndexUtil createInstance(int32 max) {
        return new CircularIndexUtil(0, max);
    }
    

    public static CircularIndexUtil createInstanceAt(int32 index, int32 max) {
        return new CircularIndexUtil(index, max);
    }
    

    public virtual void setSize(int32 size) {
        this.size = size;
        this.lastIndex = size - 1;
        this.index = 0;
    }
    

    public virtual int32 getSize() {
        return this.size;
    }
    

    public override string toString() {
        return new StringMaker().append(CommonLabels.getInstance().INDEX_LABEL).appendint(this.index).append("lastIndex: ").appendint(this.lastIndex).append("size: ").appendint(this.size).toString();
    }
}

