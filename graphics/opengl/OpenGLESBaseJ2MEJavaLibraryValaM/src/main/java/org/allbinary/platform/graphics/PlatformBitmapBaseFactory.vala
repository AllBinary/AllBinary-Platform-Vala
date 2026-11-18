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
// package org.allbinary.platform.graphics
// import javax.microedition.lcdui.Image

public class PlatformBitmapBaseFactory : JObject {
    public static PlatformBitmapBaseFactory? NULL_PLATFORM_BITMAP_BASE_FACTORY;
    private static bool staticSet_NULL_PLATFORM_BITMAP_BASE_FACTORY = false;
    public static PlatformBitmapBaseFactory staticGet_NULL_PLATFORM_BITMAP_BASE_FACTORY() {
        if (!PlatformBitmapBaseFactory.staticSet_NULL_PLATFORM_BITMAP_BASE_FACTORY) {
            PlatformBitmapBaseFactory.staticSet_NULL_PLATFORM_BITMAP_BASE_FACTORY = true;
            PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY = new PlatformBitmapBaseFactory();
        }
        return PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY;
    }

    public PlatformBitmapBaseFactory() {
        base();
    }
    

    public virtual PlatformBitmapBase createBitmap(Image image) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

