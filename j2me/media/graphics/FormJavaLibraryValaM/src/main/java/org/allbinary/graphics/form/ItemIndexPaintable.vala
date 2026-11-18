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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.form.item.ABCustomItem

public class ItemIndexPaintable : JObject {
    private static ItemIndexPaintable? instance;
    private static bool staticSet_instance = false;
    private static ItemIndexPaintable staticGet_instance() {
        if (!ItemIndexPaintable.staticSet_instance) {
            ItemIndexPaintable.staticSet_instance = true;
            ItemIndexPaintable.instance = new ItemIndexPaintable();
        }
        return ItemIndexPaintable.instance;
    }

    public ItemIndexPaintable() {
        base();
    }
    

    public static ItemIndexPaintable getInstance() {
        return ItemIndexPaintable.staticGet_instance();
    }
    

    public virtual int32 paint(Graphics graphics, int32 index, ABCustomItem item, int32 dx, int32 dy) {
        return 0;
    }
}

