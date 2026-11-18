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

public class TouchButtonsBuilderFactory : JObject {
    public static TouchButtonsBuilderFactory? NO_TOUCH_BUTTON_BUILDER_FACTORY;
    private static bool staticSet_NO_TOUCH_BUTTON_BUILDER_FACTORY = false;
    public static TouchButtonsBuilderFactory staticGet_NO_TOUCH_BUTTON_BUILDER_FACTORY() {
        if (!TouchButtonsBuilderFactory.staticSet_NO_TOUCH_BUTTON_BUILDER_FACTORY) {
            TouchButtonsBuilderFactory.staticSet_NO_TOUCH_BUTTON_BUILDER_FACTORY = true;
            TouchButtonsBuilderFactory.NO_TOUCH_BUTTON_BUILDER_FACTORY = new TouchButtonsBuilderFactory();
        }
        return TouchButtonsBuilderFactory.NO_TOUCH_BUTTON_BUILDER_FACTORY;
    }

    public TouchButtonsBuilderFactory() {
        base();
    }
    

    public virtual BaseTouchInput getInstance() {
        return NoButtonsTouchInputFactory.getInstance();
    }
}

