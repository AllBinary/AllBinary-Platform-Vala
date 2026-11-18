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
// package org.allbinary.game.ag.life

public interface LifeInterface : JObject {
    

    public abstract int16 @get();
    

    public abstract void @set(int16 lives);
    

    public abstract void reset();
    

    public abstract void add(int16 lives);
    

    public abstract void deaths(int16 lives);
    

    public abstract int16 getMaxlives();
    

    public abstract bool isAlive();
}

