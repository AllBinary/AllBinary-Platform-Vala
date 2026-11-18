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
// package org.allbinary.image

public class ImageCacheFactory : JObject {
    private static ImageCache? IMAGE_CACHE;
    private static bool staticSet_IMAGE_CACHE = false;
    private static ImageCache staticGet_IMAGE_CACHE() {
        if (!ImageCacheFactory.staticSet_IMAGE_CACHE) {
            ImageCacheFactory.staticSet_IMAGE_CACHE = true;
            ImageCacheFactory.IMAGE_CACHE = new ImageCache();
        }
        return ImageCacheFactory.IMAGE_CACHE;
    }

    public ImageCacheFactory() {
        base();
    }
    

    public static ImageCache getInstance() {
        return ImageCacheFactory.staticGet_IMAGE_CACHE();
    }
    

    public static void init() {
    }
}

