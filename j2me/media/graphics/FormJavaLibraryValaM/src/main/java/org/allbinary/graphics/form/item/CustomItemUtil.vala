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
// package org.allbinary.graphics.form.item

public class CustomItemUtil : JObject {
    private static CustomItemUtil? instance;
    private static bool staticSet_instance = false;
    private static CustomItemUtil staticGet_instance() {
        if (!CustomItemUtil.staticSet_instance) {
            CustomItemUtil.staticSet_instance = true;
            CustomItemUtil.instance = new CustomItemUtil();
        }
        return CustomItemUtil.instance;
    }
    public ABCustomItem[] CUSTOM_ITEM_ARRAY;

    // Java field initializers run after the base constructor
    private void initFieldsCustomItemUtil() {
    this.CUSTOM_ITEM_ARRAY = new ABCustomItem[0];
    }

    public CustomItemUtil() {
        base();
        this.initFieldsCustomItemUtil();
    }
    

    public static CustomItemUtil getInstance() {
        return CustomItemUtil.staticGet_instance();
    }
}

