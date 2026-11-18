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
// import org.allbinary.animation.AnimationBehavior
// import org.allbinary.logic.util.cache.CacheableInterface
// import org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface

public class ImageArrayRotationAnimationCacheableInterfaceFactory : JObject, CacheableInterfaceFactoryInterface {

    public ImageArrayRotationAnimationCacheableInterfaceFactory() {
        base();
    }
    

    public virtual CacheableInterface getInstance1(JObject key) {
        return new ImageArrayRotationAnimationCacheable(key, AnimationBehavior.getInstance());
    }
}

