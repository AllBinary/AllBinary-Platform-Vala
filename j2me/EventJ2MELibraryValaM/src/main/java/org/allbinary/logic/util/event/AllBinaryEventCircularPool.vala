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
// import org.allbinary.logic.util.cache.BaseCircularPool
// import org.allbinary.util.CircularIndexUtil

public class AllBinaryEventCircularPool : BaseCircularPool {
    

    public AllBinaryEventCircularPool(int32 max) {
        base();
        this.OBJECT_ARRAY = new JObject[max];
        this.circularIndexUtil = CircularIndexUtil.createInstance(max);
    }
    

    public virtual void initAllBinaryEventCircularPool(AllBinaryEventObjectFactoryInterface allBinaryEventObjectFactoryInterface) {
        this.circularIndexUtil.setIndex(0);
        int32 size = this.circularIndexUtil.getSize();
        for (int32 index = 0; index < size; index++) {
            this.OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance();
        }
    }
}

