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

public class ItemColorFactory : JObject {
    private static ItemColorFactory? instance;
    private static bool staticSet_instance = false;
    private static ItemColorFactory staticGet_instance() {
        if (!ItemColorFactory.staticSet_instance) {
            ItemColorFactory.staticSet_instance = true;
            ItemColorFactory.instance = new ItemColorFactory();
        }
        return ItemColorFactory.instance;
    }
    public int32 INVERT_PAINT;
    public int32 PAINT;
    public int32 TEXT_FIELD_NO_FOCUS;

    // Java field initializers run after the base constructor
    private void initFieldsItemColorFactory() {
    this.INVERT_PAINT = (int32) 0xFF000000;
    this.PAINT = (int32) 0xFFe07718;
    this.TEXT_FIELD_NO_FOCUS = 0x7F7F7F;
    }

    public ItemColorFactory() {
        base();
        this.initFieldsItemColorFactory();
    }
    

    public static ItemColorFactory getInstance() {
        return ItemColorFactory.staticGet_instance();
    }
}

