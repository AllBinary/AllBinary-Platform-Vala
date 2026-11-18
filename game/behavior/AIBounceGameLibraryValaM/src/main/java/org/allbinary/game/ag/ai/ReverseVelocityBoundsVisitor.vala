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
// package org.allbinary.game.ag.ai
// import org.allbinary.bounds.BoundsVisitorInterface
// import org.allbinary.game.physics.velocity.VelocityInterface
// import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface
// import org.allbinary.layer.LayerInterface
// import org.allbinary.logic.communication.log.LogUtil

public class ReverseVelocityBoundsVisitor : JObject, BoundsVisitorInterface {
    public LogUtil logUtil;
    public VelocityInterface velocityInterface;
    private LayerInterface layerInterface;

    // Java field initializers run after the base constructor
    private void initFieldsReverseVelocityBoundsVisitor() {
    this.logUtil = LogUtil.getInstance();
    
    
    }
    

    public ReverseVelocityBoundsVisitor(LayerInterface layerInterface) {
        base();
        this.initFieldsReverseVelocityBoundsVisitor();
        this.layerInterface = layerInterface;
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface) layerInterface);
        this.velocityInterface = ((VelocityInterface) velocityInterfaceCompositeInterface.getVelocityProperties());
    }
    

    public virtual int32 getX() {
        return this.layerInterface.getXP();
    }
    

    public virtual int32 getY() {
        return this.layerInterface.getYP();
    }
    

    public virtual void minX() {
        if (this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0) {
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        }
    }
    

    public virtual void maxX() {
        if (this.velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0) {
            this.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        }
    }
    

    public virtual void minY() {
        if (this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0) {
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        }
    }
    

    public virtual void maxY() {
        if (this.velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0) {
            this.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        }
    }
}

