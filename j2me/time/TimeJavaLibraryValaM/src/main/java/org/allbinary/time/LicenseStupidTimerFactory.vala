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
// package org.allbinary.time

public class LicenseStupidTimerFactory : JObject {
    private static StupidTimer? instance;
    private static bool staticSet_instance = false;
    private static StupidTimer staticGet_instance() {
        if (!LicenseStupidTimerFactory.staticSet_instance) {
            LicenseStupidTimerFactory.staticSet_instance = true;
            LicenseStupidTimerFactory.instance = new StupidTimer();
        }
        return LicenseStupidTimerFactory.instance;
    }

    public LicenseStupidTimerFactory() {
        base();
    }
    

    public static StupidTimer getInstance() {
        return LicenseStupidTimerFactory.staticGet_instance();
    }
}

