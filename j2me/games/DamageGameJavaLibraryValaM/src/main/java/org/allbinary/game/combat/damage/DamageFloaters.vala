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
// package org.allbinary.game.combat.damage
// import org.allbinary.graphics.paint.Paintable

public class DamageFloaters : Paintable {
    private static DamageFloaters? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static DamageFloaters staticGet_SINGLETON() {
        if (!DamageFloaters.staticSet_SINGLETON) {
            DamageFloaters.staticSet_SINGLETON = true;
            DamageFloaters.SINGLETON = new DamageFloaters();
        }
        return DamageFloaters.SINGLETON;
    }

    public DamageFloaters() {
        base();
    }
    

    public static DamageFloaters getInstance() {
        return DamageFloaters.staticGet_SINGLETON();
    }
    

    public virtual void add(int32 damage) {
    }
}

