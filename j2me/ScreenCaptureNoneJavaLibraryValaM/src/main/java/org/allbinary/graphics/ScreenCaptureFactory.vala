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
// package org.allbinary.graphics

public class ScreenCaptureFactory : JObject {
    private static ScreenCapture? instance;
    private static bool staticSet_instance = false;
    private static ScreenCapture staticGet_instance() {
        if (!ScreenCaptureFactory.staticSet_instance) {
            ScreenCaptureFactory.staticSet_instance = true;
            ScreenCaptureFactory.instance = ScreenCaptureNoneFactory.getInstance();
        }
        return ScreenCaptureFactory.instance;
    }

    public ScreenCaptureFactory() {
        base();
    }
    

    public static ScreenCapture getInstance() {
        return ScreenCaptureFactory.staticGet_instance();
    }
}

