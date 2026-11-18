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

public class TouchButtonStartResource : TouchButtonResource {
    private static TouchButtonResource? instance;
    private static bool staticSet_instance = false;
    private static TouchButtonResource staticGet_instance() {
        if (!TouchButtonStartResource.staticSet_instance) {
            TouchButtonStartResource.staticSet_instance = true;
            TouchButtonStartResource.instance = new TouchButtonStartResource();
        }
        return TouchButtonStartResource.instance;
    }
    

    public static TouchButtonResource getInstance() {
        return TouchButtonStartResource.staticGet_instance();
    }
    

    public TouchButtonStartResource() {
        base("/touch_button_start_64_by_64.png", "/touch_button_start_hint_64_by_64.png");
    }
}

