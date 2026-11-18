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
// import javax.microedition.lcdui.NullImage
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory

public class PlatformBitmapBase : JObject {
    public static PlatformBitmapBase? NULL_PLATFORM_BITMAP_BASE;
    private static bool staticSet_NULL_PLATFORM_BITMAP_BASE = false;
    public static PlatformBitmapBase staticGet_NULL_PLATFORM_BITMAP_BASE() {
        if (!PlatformBitmapBase.staticSet_NULL_PLATFORM_BITMAP_BASE) {
            PlatformBitmapBase.staticSet_NULL_PLATFORM_BITMAP_BASE = true;
            PlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE = new PlatformBitmapBase();
        }
        return PlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE;
    }
    public int32 alpha;
    public BasicColor basicColor;

    // Java field initializers run after the base constructor
    private void initFieldsPlatformBitmapBase() {
    this.alpha = 255;
    this.basicColor = BasicColorFactory.getInstance().NULL_COLOR;
    }

    public PlatformBitmapBase() {
        base();
        this.initFieldsPlatformBitmapBase();
    }
    

    public virtual int32 getWidth() {
        return 0;
    }
    

    public virtual int32 getHeight() {
        return 0;
    }
    

    public virtual Image getImage() {
        return NullImage.NULL_IMAGE;
    }
}

