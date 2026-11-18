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
// package org.allbinary.animation.image
// import org.allbinary.logic.util.cache.BasicArrayListResetablePool
// import org.allbinary.logic.util.cache.CacheableInterface
// import org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface
// import org.allbinary.logic.util.cache.PoolInterface

public class ImageArrayRotationAnimationPool : BasicArrayListResetablePool {
    private static PoolInterface? IMAGE_ROTATION_ANIMATION_POOL;
    private static bool staticSet_IMAGE_ROTATION_ANIMATION_POOL = false;
    private static PoolInterface staticGet_IMAGE_ROTATION_ANIMATION_POOL() {
        if (!ImageArrayRotationAnimationPool.staticSet_IMAGE_ROTATION_ANIMATION_POOL) {
            ImageArrayRotationAnimationPool.staticSet_IMAGE_ROTATION_ANIMATION_POOL = true;
            ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL = new ImageArrayRotationAnimationPool(new ImageArrayRotationAnimationCacheableInterfaceFactory());
        }
        return ImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL;
    }
    

    public ImageArrayRotationAnimationPool(CacheableInterfaceFactoryInterface cacheableInterfaceFactoryInterface) {
        base(cacheableInterfaceFactoryInterface);
    }
    

    public static PoolInterface getInstance() {
        return ImageArrayRotationAnimationPool.staticGet_IMAGE_ROTATION_ANIMATION_POOL();
    }
    

    public override CacheableInterface remove(JObject key) {
        CacheableInterface cacheableInterface = base.remove(key);
        ImageArrayRotationAnimationInfo allBinaryImageRotationAnimationInfo = ((ImageArrayRotationAnimationInfo) key);
        ImageArrayRotationAnimationCacheable imageArrayRotationAnimationCacheable = (((ImageArrayRotationAnimationCacheable) cacheableInterface));
        imageArrayRotationAnimationCacheable.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray());
        return cacheableInterface;
    }
}

