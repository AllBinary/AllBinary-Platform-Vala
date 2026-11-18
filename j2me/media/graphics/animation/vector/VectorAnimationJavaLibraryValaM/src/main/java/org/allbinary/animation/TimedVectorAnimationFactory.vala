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
// package org.allbinary.animation
// import org.allbinary.graphics.color.BasicColor

public class TimedVectorAnimationFactory : JObject, VectorAnimationFactoryInterface {

    public TimedVectorAnimationFactory() {
        base();
    }
    

    public virtual VectorAnimation getInstance2(int32[,,] points, BasicColor basicColor) {
        return new TimedVectorAnimation(points, basicColor, AnimationBehavior.getInstance());
    }
}

