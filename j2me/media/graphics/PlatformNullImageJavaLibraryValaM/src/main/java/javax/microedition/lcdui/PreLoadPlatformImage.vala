/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package javax.microedition.lcdui

//PlatformNullImageJavaLibrary
public class PreLoadPlatformImage : PlatformImage {
    private static PreLoadPlatformImage? instance;
    private static bool staticSet_instance = false;
    private static PreLoadPlatformImage staticGet_instance() {
        if (!PreLoadPlatformImage.staticSet_instance) {
            PreLoadPlatformImage.staticSet_instance = true;
            PreLoadPlatformImage.instance = new PreLoadPlatformImage();
        }
        return PreLoadPlatformImage.instance;
    }

    public PreLoadPlatformImage() {
        base();
    }
    

    public static PreLoadPlatformImage getInstance() {
        return PreLoadPlatformImage.staticGet_instance();
    }
}

