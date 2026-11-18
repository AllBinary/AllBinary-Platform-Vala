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
// package org.allbinary.input.motion.button

public class TouchButtonBlankResource : TouchButtonResource {
    private static TouchButtonResource? instance;
    private static bool staticSet_instance = false;
    private static TouchButtonResource staticGet_instance() {
        if (!TouchButtonBlankResource.staticSet_instance) {
            TouchButtonBlankResource.staticSet_instance = true;
            TouchButtonBlankResource.instance = new TouchButtonBlankResource();
        }
        return TouchButtonBlankResource.instance;
    }
    

    public static TouchButtonResource getInstance() {
        return TouchButtonBlankResource.staticGet_instance();
    }
    

    public TouchButtonBlankResource() {
        base("/touch_button_64_by_64.png", "/touch_button_hint_64_by_64.png");
    }
}

