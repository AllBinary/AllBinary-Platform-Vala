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
// package org.allbinary.platform.opengles
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import org.allbinary.string.CommonStrings

public class PlatformTextureBaseFactory : JObject {
    public static PlatformTextureBaseFactory? NULL_PLATFORM_TEXTURE_BASE_FACTORY;
    private static bool staticSet_NULL_PLATFORM_TEXTURE_BASE_FACTORY = false;
    public static PlatformTextureBaseFactory staticGet_NULL_PLATFORM_TEXTURE_BASE_FACTORY() {
        if (!PlatformTextureBaseFactory.staticSet_NULL_PLATFORM_TEXTURE_BASE_FACTORY) {
            PlatformTextureBaseFactory.staticSet_NULL_PLATFORM_TEXTURE_BASE_FACTORY = true;
            PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY = new PlatformTextureBaseFactory();
        }
        return PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY;
    }
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsPlatformTextureBaseFactory() {
    this.commonStrings = CommonStrings.getInstance();
    }

    public PlatformTextureBaseFactory() {
        base();
        this.initFieldsPlatformTextureBaseFactory();
    }
    

    public virtual void load(GL10 gl, int32 target, int32 level, Image image, int32 border, bool flip) {
    }
}

