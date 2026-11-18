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
// package org.allbinary.game.physics.velocity

public class VelocityProperties : BasicVelocityProperties, VelocityInterface, BasicVelocityInterface {
    public static VelocityProperties? NULL_VELOCITY_PROPERTIES;
    private static bool staticSet_NULL_VELOCITY_PROPERTIES = false;
    public static VelocityProperties staticGet_NULL_VELOCITY_PROPERTIES() {
        if (!VelocityProperties.staticSet_NULL_VELOCITY_PROPERTIES) {
            VelocityProperties.staticSet_NULL_VELOCITY_PROPERTIES = true;
            VelocityProperties.NULL_VELOCITY_PROPERTIES = new VelocityProperties(0, 0);
        }
        return VelocityProperties.NULL_VELOCITY_PROPERTIES;
    }
    private int32 maxForwardVelocity;
    private int32 maxReverseVelocity;

    // Java field initializers run after the base constructor
    private void initFieldsVelocityProperties() {
    this.maxForwardVelocity = 0;
    this.maxReverseVelocity = 0;
    }
    

    public VelocityProperties(int32 maxForwardVelocity, int32 maxReverseVelocity) {
        base();
        this.initFieldsVelocityProperties();
        this.setMaxForwardVelocity(maxForwardVelocity);
        this.setMaxReverseVelocity(maxReverseVelocity);
    }
    

    public virtual int32 getMaxForwardVelocity() {
        return this.maxForwardVelocity;
    }
    

    public virtual void setMaxForwardVelocity(int32 maxForwardVelocity) {
        this.maxForwardVelocity = maxForwardVelocity;
    }
    

    public virtual int32 getMaxReverseVelocity() {
        return this.maxReverseVelocity;
    }
    

    public virtual void setMaxReverseVelocity(int32 maxReverseVelocity) {
        this.maxReverseVelocity = maxReverseVelocity;
    }
    

    public virtual void limitMaxXYForwardVelocity() {
        this.limitMaxXYVelocity(this.getMaxForwardVelocity());
    }
    

    public virtual void limitMaxXYReverseVelocity() {
        this.limitMaxXYVelocity(this.getMaxReverseVelocity());
    }
    

    public virtual void limitMaxYForwardVelocity() {
        this.limitMaxYVelocity(this.getMaxForwardVelocity());
    }
    

    public virtual void limitMaxYReverseVelocity() {
        this.limitMaxYVelocity(this.getMaxReverseVelocity());
    }
    

    public virtual void limitMaxXForwardVelocity() {
        this.limitMaxXVelocity(this.getMaxForwardVelocity());
    }
    

    public virtual void limitMaxXReverseVelocity() {
        this.limitMaxXVelocity(this.getMaxReverseVelocity());
    }
    

    public virtual bool isOverXYMaxForwardVelocity() {
        return this.isOverXYMaxVelocity(this.getMaxForwardVelocity());
    }
    

    public virtual bool isOverXYMaxReverseVelocity() {
        return this.isOverXYMaxVelocity(this.getMaxReverseVelocity());
    }
    

    public virtual void limitXYToForwardAndReverseMaxVelocity() {
        this.limitMaxXYForwardVelocity();
        this.limitMaxXYReverseVelocity();
    }
    

    public virtual void limitMaxXYVelocity(int32 maxVelocity) {
        this.limitMaxXVelocity(maxVelocity);
        this.limitMaxYVelocity(maxVelocity);
    }
    

    public virtual void limitMaxPositiveYVelocity(int32 maxVelocity) {
        if (this.velocityYBasicDecimal.getUnscaled() > ((int64) (maxVelocity))) {
            this.velocityYBasicDecimal.setint(maxVelocity);
        }
    }
    

    public virtual void limitMaxNegativeYVelocity(int32 maxVelocity) {
        if (this.velocityYBasicDecimal.getUnscaled() < ((int64) (-maxVelocity))) {
            this.velocityYBasicDecimal.setint(-maxVelocity);
        }
    }
    

    public virtual void limitMaxYVelocity(int32 maxVelocity) {
        this.limitMaxPositiveYVelocity(maxVelocity);
        this.limitMaxNegativeYVelocity(maxVelocity);
    }
    

    public virtual void limitMaxXVelocity(int32 maxVelocity) {
        if (this.velocityXBasicDecimal.getUnscaled() > ((int64) (maxVelocity))) {
            this.velocityXBasicDecimal.setint(maxVelocity);
        }
        if (this.velocityXBasicDecimal.getUnscaled() < ((int64) (-maxVelocity))) {
            this.velocityXBasicDecimal.setint(-maxVelocity);
        }
    }
    

    public virtual bool isOverXYMaxVelocity(int32 maxVelocity) {
        if (this.velocityXBasicDecimal.getUnscaled() > ((int64) (maxVelocity))) {
            return true;
        }
        if (this.velocityXBasicDecimal.getUnscaled() < ((int64) (-maxVelocity))) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() > ((int64) (maxVelocity))) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() < ((int64) (-maxVelocity))) {
            return true;
        }
        return false;
    }
    

    public override void setVelocityi(int64 magnitude, int32 angle, int32 otherAngle) {
        base.setVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
    

    public override void addVelocityi(int64 magnitude, int32 angle, int32 otherAngle) {
        base.addVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
}

