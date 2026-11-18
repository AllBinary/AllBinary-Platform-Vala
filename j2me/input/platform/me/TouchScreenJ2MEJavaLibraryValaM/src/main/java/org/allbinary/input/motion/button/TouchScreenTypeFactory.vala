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

public class TouchScreenTypeFactory : JObject {
    private static TouchScreenTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static TouchScreenTypeFactory staticGet_instance() {
        if (!TouchScreenTypeFactory.staticSet_instance) {
            TouchScreenTypeFactory.staticSet_instance = true;
            TouchScreenTypeFactory.instance = new TouchScreenTypeFactory();
        }
        return TouchScreenTypeFactory.instance;
    }

    public TouchScreenTypeFactory() {
        base();
    }
    

    public static TouchScreenTypeFactory getInstance() {
        return TouchScreenTypeFactory.staticGet_instance();
    }
    

    public virtual void TouchScreenTypeFactory() {
        TouchScreenFactory touchScreenFactory = TouchScreenFactory.getInstance();
        touchScreenFactory.setTouch(true);
    }
}

