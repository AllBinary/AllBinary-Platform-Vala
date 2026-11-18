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
// import org.allbinary.game.configuration.GameConfigurationCentral
// import org.allbinary.math.AngleFactory
// import org.allbinary.math.AngleInfo
// import org.allbinary.media.ScaleProperties

public class RotationAnimationFactory : JObject, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private int16 totalAngle;
    private int16 angleIncrement;

    // Java field initializers run after the base constructor
    private void initFieldsRotationAnimationFactory() {
    
    
    }
    

    public static RotationAnimationFactory createFactory() {
        int16 totalAngle = AngleFactory.getInstance().TOTAL_ANGLE;
        return new RotationAnimationFactory(totalAngle, ((int16) ((((int32) (totalAngle)) / GameConfigurationCentral.getInstance().getGameControlFidelity()))));
    }
    

    public RotationAnimationFactory(int16 totalAngle, int16 angleIncrement) {
        base();
        this.initFieldsRotationAnimationFactory();
        this.totalAngle = totalAngle;
        this.angleIncrement = angleIncrement;
    }
    

    public virtual Animation getInstance1(int32 instanceId) {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance1(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance());
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance1(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance());
    }
    

    public virtual void setInitialScale(ScaleProperties scaleProperties) {
    }
}

