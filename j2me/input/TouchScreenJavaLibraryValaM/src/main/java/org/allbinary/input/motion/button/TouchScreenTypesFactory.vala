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
// package org.allbinary.input.motion.button

public class TouchScreenTypesFactory : JObject {
    private static TouchScreenTypesFactory? instance;
    private static bool staticSet_instance = false;
    private static TouchScreenTypesFactory staticGet_instance() {
        if (!TouchScreenTypesFactory.staticSet_instance) {
            TouchScreenTypesFactory.staticSet_instance = true;
            TouchScreenTypesFactory.instance = new TouchScreenTypesFactory();
        }
        return TouchScreenTypesFactory.instance;
    }
    public TouchScreenType FINGER;
    public TouchScreenType NOTOUCH;
    public TouchScreenType STYLUS;
    public TouchScreenType UNDEFINED;

    // Java field initializers run after the base constructor
    private void initFieldsTouchScreenTypesFactory() {
    this.FINGER = new TouchScreenType("Finger");
    this.NOTOUCH = new TouchScreenType("No Touch");
    this.STYLUS = new TouchScreenType("Stylus");
    this.UNDEFINED = new TouchScreenType("Undefined");
    }

    public TouchScreenTypesFactory() {
        base();
        this.initFieldsTouchScreenTypesFactory();
    }
    

    public static TouchScreenTypesFactory getInstance() {
        return TouchScreenTypesFactory.staticGet_instance();
    }
}

