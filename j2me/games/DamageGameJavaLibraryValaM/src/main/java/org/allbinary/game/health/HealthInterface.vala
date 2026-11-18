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
// package org.allbinary.game.health

public interface HealthInterface : JObject {
    

    public abstract bool isAlive();
    

    public abstract void damage(int32 ahealth);
    

    public abstract void heal(int32 ahealth);
    

    public abstract void healMax();
    

    public abstract int32 getMaxHealth();
    

    public abstract void setMaxHealth(int32 maxHealth);
    

    public abstract int32 getHealth();
    

    public abstract void addListener(HealthListenerInterface healthListenerInterface);
}

