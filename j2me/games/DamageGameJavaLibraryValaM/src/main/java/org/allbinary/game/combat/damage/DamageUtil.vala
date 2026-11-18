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
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker

public class DamageUtil : JObject {
    private static DamageUtil? instance;
    private static bool staticSet_instance = false;
    private static DamageUtil staticGet_instance() {
        if (!DamageUtil.staticSet_instance) {
            DamageUtil.staticSet_instance = true;
            DamageUtil.instance = new DamageUtil();
        }
        return DamageUtil.instance;
    }
    public LogUtil logUtil;
    public string COLLIDE;

    // Java field initializers run after the base constructor
    private void initFieldsDamageUtil() {
    this.logUtil = LogUtil.getInstance();
    this.COLLIDE = "collide";
    }
    

    public static DamageUtil getInstance() {
        return DamageUtil.staticGet_instance();
    }
    

    public DamageUtil() {
        base();
        this.initFieldsDamageUtil();
    }
    

    public virtual void process(DamageableInterface damageableInterface, DamageableInterface damageableInterface2) {
        damageableInterface.damage(damageableInterface2.getDamage(0), 0);
    }
    

    public virtual void debugDamage(CollidableCompositeLayer collidableInterfaceCompositeInterface1, CollidableCompositeLayer collidableInterfaceCompositeInterface) {
        CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) collidableInterfaceCompositeInterface);
        int32 damage = collidableDestroyableDamageableLayer.getDamage(0);
        if (damage > 20000) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append("Collision ");
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString());
            stringBuffer.append(" with: ");
            stringBuffer.append(collidableInterfaceCompositeInterface.toString());
            stringBuffer.append(" damage: ");
            stringBuffer.appendint(damage);
            this.logUtil.putF(stringBuffer.toString(), collidableInterfaceCompositeInterface1, this.COLLIDE);
        }
    }
}

