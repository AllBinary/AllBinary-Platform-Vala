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

public class ScreenCaptureNoneFactory : JObject {
    private static ScreenCapture? instance;
    private static bool staticSet_instance = false;
    private static ScreenCapture staticGet_instance() {
        if (!ScreenCaptureNoneFactory.staticSet_instance) {
            ScreenCaptureNoneFactory.staticSet_instance = true;
            ScreenCaptureNoneFactory.instance = new ScreenCapture();
        }
        return ScreenCaptureNoneFactory.instance;
    }

    public ScreenCaptureNoneFactory() {
        base();
    }
    

    public static ScreenCapture getInstance() {
        return ScreenCaptureNoneFactory.staticGet_instance();
    }
}

