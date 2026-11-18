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
public class PostLoadPlatformImage : PlatformImage {
    private static PostLoadPlatformImage? instance;
    private static bool staticSet_instance = false;
    private static PostLoadPlatformImage staticGet_instance() {
        if (!PostLoadPlatformImage.staticSet_instance) {
            PostLoadPlatformImage.staticSet_instance = true;
            PostLoadPlatformImage.instance = new PostLoadPlatformImage();
        }
        return PostLoadPlatformImage.instance;
    }

    public PostLoadPlatformImage() {
        base();
    }
    

    public static PostLoadPlatformImage getInstance() {
        return PostLoadPlatformImage.staticGet_instance();
    }
}

