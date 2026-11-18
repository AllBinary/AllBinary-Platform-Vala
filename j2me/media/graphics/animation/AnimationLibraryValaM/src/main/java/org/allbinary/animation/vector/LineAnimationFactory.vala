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
// package org.allbinary.animation.vector
// import org.allbinary.animation.Animation
// import org.allbinary.animation.AnimationInterfaceFactoryInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.media.ScaleProperties

public class LineAnimationFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private BasicColor basicColor;

    // Java field initializers run after the base constructor
    private void initFieldsLineAnimationFactory() {
    
    }
    

    public LineAnimationFactory(BasicColor basicColor) {
        base();
        this.initFieldsLineAnimationFactory();
        this.basicColor = basicColor;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return new LineAnimation(this.basicColor);
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

