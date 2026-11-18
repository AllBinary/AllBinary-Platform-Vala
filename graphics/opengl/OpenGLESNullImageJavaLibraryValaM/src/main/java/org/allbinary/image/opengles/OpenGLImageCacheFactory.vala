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
// package org.allbinary.image.opengles
// import org.allbinary.image.ImageCache

//OpenGLESNullImageJavaLibrary
public class OpenGLImageCacheFactory : JObject {
    private static ImageCache? IMAGE_CACHE;
    private static bool staticSet_IMAGE_CACHE = false;
    private static ImageCache staticGet_IMAGE_CACHE() {
        if (!OpenGLImageCacheFactory.staticSet_IMAGE_CACHE) {
            OpenGLImageCacheFactory.staticSet_IMAGE_CACHE = true;
            OpenGLImageCacheFactory.IMAGE_CACHE = ImageCache.NULL_IMAGE_CACHE;
        }
        return OpenGLImageCacheFactory.IMAGE_CACHE;
    }

    public OpenGLImageCacheFactory() {
        base();
    }
    

    public static ImageCache getInstance() {
        return OpenGLImageCacheFactory.staticGet_IMAGE_CACHE();
    }
    

    public static void init() {
        if (OpenGLImageCacheFactory.staticGet_IMAGE_CACHE() == null) {
        }
    }
}

