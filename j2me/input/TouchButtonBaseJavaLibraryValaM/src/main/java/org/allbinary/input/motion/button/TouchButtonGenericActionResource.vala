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

public class TouchButtonGenericActionResource : TouchButtonResource {
    private static TouchButtonResource? instance;
    private static bool staticSet_instance = false;
    private static TouchButtonResource staticGet_instance() {
        if (!TouchButtonGenericActionResource.staticSet_instance) {
            TouchButtonGenericActionResource.staticSet_instance = true;
            TouchButtonGenericActionResource.instance = new TouchButtonGenericActionResource();
        }
        return TouchButtonGenericActionResource.instance;
    }
    

    public static TouchButtonResource getInstance() {
        return TouchButtonGenericActionResource.staticGet_instance();
    }
    

    public TouchButtonGenericActionResource() {
        base("/touch_button_generic_action_64_by_64.png", "/touch_button_generic_action_hint_64_by_64.png");
    }
}

