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
// package org.allbinary.game.combat
// import org.allbinary.game.combat.damage.DamageableBaseBehavior
// import org.allbinary.game.combat.destroy.DestroyableBaseBehavior

public class CombatBaseBehavior : JObject {
    public static CombatBaseBehavior? NULL_COMBAT_BEHAVIOR;
    private static bool staticSet_NULL_COMBAT_BEHAVIOR = false;
    public static CombatBaseBehavior staticGet_NULL_COMBAT_BEHAVIOR() {
        if (!CombatBaseBehavior.staticSet_NULL_COMBAT_BEHAVIOR) {
            CombatBaseBehavior.staticSet_NULL_COMBAT_BEHAVIOR = true;
            CombatBaseBehavior.NULL_COMBAT_BEHAVIOR = new CombatBaseBehavior(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance());
        }
        return CombatBaseBehavior.NULL_COMBAT_BEHAVIOR;
    }
    private DamageableBaseBehavior damageableBaseBehavior;
    private DestroyableBaseBehavior destroyableBaseBehavior;
    private bool readyForExplosion;

    // Java field initializers run after the base constructor
    private void initFieldsCombatBaseBehavior() {
    
    
    this.readyForExplosion = false;
    }
    

    public CombatBaseBehavior(DamageableBaseBehavior damageableBaseBehavior, DestroyableBaseBehavior destroyableBaseBehavior) {
        base();
        this.initFieldsCombatBaseBehavior();
        this.damageableBaseBehavior = damageableBaseBehavior;
        this.destroyableBaseBehavior = destroyableBaseBehavior;
    }
    

    public virtual DamageableBaseBehavior getDamageableBaseBehavior() {
        return this.damageableBaseBehavior;
    }
    

    public virtual DestroyableBaseBehavior getDestroyableBaseBehavior() {
        return this.destroyableBaseBehavior;
    }
    

    public virtual bool isReadyForExplosion() {
        return this.readyForExplosion;
    }
    

    public virtual void setReadyForExplosion(bool readyForExplosion) {
        this.readyForExplosion = readyForExplosion;
    }
}

