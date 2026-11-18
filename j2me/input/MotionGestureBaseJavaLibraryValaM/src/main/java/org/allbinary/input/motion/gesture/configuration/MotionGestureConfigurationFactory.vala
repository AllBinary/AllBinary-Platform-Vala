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
// package org.allbinary.input.motion.gesture.configuration

public class MotionGestureConfigurationFactory : JObject {
    private static MotionGestureConfiguration? config;
    private static bool staticSet_config = false;
    private static MotionGestureConfiguration staticGet_config() {
        if (!MotionGestureConfigurationFactory.staticSet_config) {
            MotionGestureConfigurationFactory.staticSet_config = true;
            MotionGestureConfigurationFactory.config = new MotionGestureConfiguration();
        }
        return MotionGestureConfigurationFactory.config;
    }
    

    public MotionGestureConfigurationFactory() {
        base();
    }
    

    public static MotionGestureConfiguration getInstance() {
        return MotionGestureConfigurationFactory.staticGet_config();
    }
}

