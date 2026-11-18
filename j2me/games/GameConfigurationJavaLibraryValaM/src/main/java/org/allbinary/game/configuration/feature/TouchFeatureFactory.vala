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
// package org.allbinary.game.configuration.feature

public class TouchFeatureFactory : JObject {
    private static TouchFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static TouchFeatureFactory staticGet_instance() {
        if (!TouchFeatureFactory.staticSet_instance) {
            TouchFeatureFactory.staticSet_instance = true;
            TouchFeatureFactory.instance = new TouchFeatureFactory();
        }
        return TouchFeatureFactory.instance;
    }
    public TouchFeature TOUCH_ENABLED;
    public TouchFeature SHOW_SCREEN_BUTTONS;
    public TouchFeature AUTO_HIDE_SHOW_SCREEN_BUTTONS;
    public TouchFeature HIDE_SCREEN_BUTTONS;

    // Java field initializers run after the base constructor
    private void initFieldsTouchFeatureFactory() {
    this.TOUCH_ENABLED = new TouchFeature("Touch Enabled");
    this.SHOW_SCREEN_BUTTONS = new TouchFeature("Show");
    this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = new TouchFeature("Auto Hide (One Level)");
    this.HIDE_SCREEN_BUTTONS = new TouchFeature("Hide");
    }
    

    public static TouchFeatureFactory getInstance() {
        return TouchFeatureFactory.staticGet_instance();
    }
    

    public TouchFeatureFactory() {
        base();
        this.initFieldsTouchFeatureFactory();
    }
}

