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

public class DamageableBaseBehavior : JObject, DamageableInterface, NamedInterface {
    private static DamageableBaseBehavior? instance;
    private static bool staticSet_instance = false;
    private static DamageableBaseBehavior staticGet_instance() {
        if (!DamageableBaseBehavior.staticSet_instance) {
            DamageableBaseBehavior.staticSet_instance = true;
            DamageableBaseBehavior.instance = new DamageableBaseBehavior();
        }
        return DamageableBaseBehavior.instance;
    }

    public DamageableBaseBehavior() {
        base();
    }
    

    public static DamageableBaseBehavior getInstance() {
        return DamageableBaseBehavior.staticGet_instance();
    }
    

    public virtual string getName() {
        return JObject.className(this);
    }
    

    public virtual void damage(int32 damage, int32 damageType) {
    }
    

    public virtual int32 getDamage(int32 damageType) {
        return 6000;
    }
}

