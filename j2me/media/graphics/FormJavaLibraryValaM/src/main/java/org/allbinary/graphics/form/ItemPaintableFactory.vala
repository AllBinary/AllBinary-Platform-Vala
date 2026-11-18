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
// package org.allbinary.graphics.form

public class ItemPaintableFactory : ItemPaintable {
    private static ItemPaintableFactory? instance;
    private static bool staticSet_instance = false;
    private static ItemPaintableFactory staticGet_instance() {
        if (!ItemPaintableFactory.staticSet_instance) {
            ItemPaintableFactory.staticSet_instance = true;
            ItemPaintableFactory.instance = new ItemPaintableFactory();
        }
        return ItemPaintableFactory.instance;
    }

    public ItemPaintableFactory() {
        base();
    }
    

    public static ItemPaintableFactory getInstance() {
        return ItemPaintableFactory.staticGet_instance();
    }
    

    public virtual ItemPaintable getInstanceItemPaintable(PaintableForm paintableForm) {
        return ItemPaintableFactory.staticGet_instance();
    }
}

