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

public class VectorExplosionAnimationFactory : JObject, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private VectorExplosionGenerator vectorExplosionGenerator;
    private BasicColor basicColor;
    public AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    private void initFieldsVectorExplosionAnimationFactory() {
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance();
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    
    }
    

    public VectorExplosionAnimationFactory(BasicColor basicColor, AnimationBehaviorFactory animationBehaviorFactory) {
        base();
        this.initFieldsVectorExplosionAnimationFactory();
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.setBasicColorP(basicColor);
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        VectorAnimationInterface vectorRotationAnimationInterface = ((VectorAnimationInterface) animationInterface);
        int32 frame = vectorRotationAnimationInterface.getFrame();
        int32[,] framePoints = vectorRotationAnimationInterface.getPoints(frame);
        int32[,,] points = this.vectorExplosionGenerator.getInstance3(framePoints, 6, this.vectorExplosionGenerator.ROTATION);
        return new VectorRotationAnimation(points, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    private void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    private BasicColor getBasicColorP() {
        return this.basicColor;
    }
}

