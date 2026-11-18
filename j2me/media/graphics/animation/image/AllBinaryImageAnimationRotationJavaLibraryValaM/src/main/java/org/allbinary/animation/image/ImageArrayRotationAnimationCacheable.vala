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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.cache.CacheableInterface

public class ImageArrayRotationAnimationCacheable : AdjustedImageArrayRotationAnimation, CacheableInterface {
    

    public ImageArrayRotationAnimationCacheable(JObject anyType, AnimationBehavior animationBehavior) {
        base((((ImageArrayRotationAnimationInfo) anyType)).getImageArray(), (((ImageArrayRotationAnimationInfo) anyType)).getAngleInfoP(), (((ImageArrayRotationAnimationInfo) anyType)).getTotalAngle(), (((ImageArrayRotationAnimationInfo) anyType)).getDx(), (((ImageArrayRotationAnimationInfo) anyType)).getDy(), animationBehavior);
    }
    

    public virtual JObject getKey() {
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public override string toString() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
}

