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
// package org.allbinary.game.physics.acceleration

public class BasicAccelerationProperties : JObject {
    private int32 forward;
    private int32 reverse;

    // Java field initializers run after the base constructor
    private void initFieldsBasicAccelerationProperties() {
    this.forward = 0;
    this.reverse = 0;
    }
    

    public BasicAccelerationProperties(int32 forward, int32 reverse) {
        base();
        this.initFieldsBasicAccelerationProperties();
        this.setForward(forward);
        this.setReverse(reverse);
    }
    

    public virtual void setReverse(int32 reverse) {
        this.reverse = reverse;
    }
    

    public virtual int32 getReverse() {
        return this.reverse;
    }
    

    public virtual void setForward(int32 forward) {
        this.forward = forward;
    }
    

    public virtual int32 getForward() {
        return this.forward;
    }
}

