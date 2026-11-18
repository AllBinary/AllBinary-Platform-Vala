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
// package org.allbinary.physics.movement
// import org.allbinary.game.layer.AllBinaryGameLayer
// import org.allbinary.logic.math.BasicDecimal

public interface MovementInterface : JObject {
    

    public abstract void init(BasicDecimal speedBasicDecimal, int32 angle, int32 otherAngle);
    

    public abstract void process(AllBinaryGameLayer layer);
    

    public abstract void stop();
}

