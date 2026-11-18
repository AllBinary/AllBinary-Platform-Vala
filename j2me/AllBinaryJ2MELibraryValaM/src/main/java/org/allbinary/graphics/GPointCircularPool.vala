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
// import org.allbinary.logic.util.cache.BaseCircularPool
// import org.allbinary.util.CircularIndexUtil

public class GPointCircularPool : BaseCircularPool {
    

    public GPointCircularPool(int32 size) {
        base();
        this.circularIndexUtil = CircularIndexUtil.createInstance(size);
        this.OBJECT_ARRAY = new JObject[size];
        for (int32 index = size - 1; index >= 0; index--) {
            this.OBJECT_ARRAY[index] = CustomGPoint.getInstance3(0, 0);
        }
    }
}

