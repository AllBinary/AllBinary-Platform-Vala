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
// import org.allbinary.direction.Direction
// import org.allbinary.logic.math.BasicDecimal
// import org.allbinary.math.Angle

public interface BasicVelocityInterface : JObject {
    

    public abstract BasicDecimal getVelocityXBasicDecimalP();
    

    public abstract BasicDecimal getVelocityYBasicDecimalP();
    

    public abstract void zero();
    

    public abstract void setVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection);
    

    public abstract void addVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection);
    

    public abstract void setVelocityWithDirection(int64 magnitude, Direction direction, Direction otherDirection);
    

    public abstract void addVelocityWithDirection(int64 magnitude, Direction direction, Direction otherDirection);
    

    public abstract void setVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle);
    

    public abstract void addVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle);
    

    public abstract void setVelocity(int64 magnitude, Angle angle, Angle otherAngle);
    

    public abstract void addVelocity(int64 magnitude, Angle angle, Angle otherAngle);
    

    public abstract void addVelocityi(int64 magnitude, int32 angle, int32 otherAngle);
}

