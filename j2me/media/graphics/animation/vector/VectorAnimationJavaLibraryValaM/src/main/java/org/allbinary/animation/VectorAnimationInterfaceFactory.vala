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
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.media.ScaleProperties

public class VectorAnimationInterfaceFactory : JObject, AnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private int32[,,] currentPoints;
    private BasicColor basicColor;
    public AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    private void initFieldsVectorAnimationInterfaceFactory() {
    
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    
    }
    

    public VectorAnimationInterfaceFactory(int32[,,] currentPoints, BasicColor basicColor, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsVectorAnimationInterfaceFactory();
        this.currentPoints = currentPoints;
        this.setBasicColorP(basicColor);
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return new VectorAnimation(this.currentPoints, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public virtual void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

