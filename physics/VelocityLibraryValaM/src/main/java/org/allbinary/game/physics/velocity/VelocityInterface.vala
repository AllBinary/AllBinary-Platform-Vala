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

public interface VelocityInterface : JObject, BasicVelocityInterface {
    

    public abstract int32 getMaxForwardVelocity();
    

    public abstract int32 getMaxReverseVelocity();
    

    public abstract void limitMaxXYForwardVelocity();
    

    public abstract void limitMaxXYReverseVelocity();
    

    public abstract void limitXYToForwardAndReverseMaxVelocity();
    

    public abstract void limitMaxXYVelocity(int32 maxVelocity);
    

    public abstract void setMaxForwardVelocity(int32 maxForwardVelocity);
    

    public abstract void setMaxReverseVelocity(int32 maxReverseVelocity);
}

