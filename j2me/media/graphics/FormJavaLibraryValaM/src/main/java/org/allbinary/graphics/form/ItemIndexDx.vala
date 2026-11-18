/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.form
// import org.allbinary.graphics.form.item.ABCustomItem

public class ItemIndexDx : JObject {
    private static ItemIndexDx? instance;
    private static bool staticSet_instance = false;
    private static ItemIndexDx staticGet_instance() {
        if (!ItemIndexDx.staticSet_instance) {
            ItemIndexDx.staticSet_instance = true;
            ItemIndexDx.instance = new ItemIndexDx();
        }
        return ItemIndexDx.instance;
    }

    public ItemIndexDx() {
        base();
    }
    

    public static ItemIndexDx getInstance() {
        return ItemIndexDx.staticGet_instance();
    }
    

    public virtual int32 getDx(int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return 0;
    }
}

