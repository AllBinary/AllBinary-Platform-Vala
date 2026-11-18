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
// import org.allbinary.logic.NullUtil
// import org.allbinary.vector.VectorInfo

public class IndependentVectorExplosionRotationAnimationFactory : JObject, ProceduralAnimationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface {
    private int32[,,] framePoints;
    private VectorInfo vectorInfo;
    private BasicColor basicColor;
    private VectorAnimationFactoryInterface vectorAnimationFactoryInterface;
    private VectorExplosionGenerator vectorExplosionGenerator;

    // Java field initializers run after the base constructor
    private void initFieldsIndependentVectorExplosionRotationAnimationFactory() {
    this.framePoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    
    
    
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance();
    }
    

    public IndependentVectorExplosionRotationAnimationFactory(VectorInfo vectorInfo, BasicColor basicColor, VectorAnimationFactoryInterface vectorAnimationFactoryInterface) {
        base();
        this.initFieldsIndependentVectorExplosionRotationAnimationFactory();
        this.vectorInfo = vectorInfo;
        this.basicColor = basicColor;
        this.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface;
        this.init();
    }
    

    public virtual void init() {
        this.framePoints = VectorRotationGenerator.getInstance().getInstance1(this.vectorInfo);
    }
    

    public virtual Animation getInstanceAnimation(Animation animationInterface) {
        int32 frame = 0;
        if (animationInterface != null) {
            IndexedAnimation rotationAnimationInterface = ((IndexedAnimation) animationInterface);
            frame = rotationAnimationInterface.getFrame();
        }
        int32[,,] points = this.vectorExplosionGenerator.getInstance3(this.framePoints[frame], 6, this.vectorExplosionGenerator.ROTATION);
        return this.vectorAnimationFactoryInterface.getInstance2(points, this.basicColor);
    }
}

