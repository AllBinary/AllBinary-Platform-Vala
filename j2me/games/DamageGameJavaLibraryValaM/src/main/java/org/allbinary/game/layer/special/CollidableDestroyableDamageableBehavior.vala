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
// package org.allbinary.game.layer.special
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.combat.damage.DamageUtil
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.logic.communication.log.ForcedLogUtil

public class CollidableDestroyableDamageableBehavior : CollidableBaseBehavior {
    public DamageUtil damageUtil;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableDestroyableDamageableBehavior() {
    this.damageUtil = DamageUtil.getInstance();
    }
    

    public CollidableDestroyableDamageableBehavior(bool collidable) {
        base(collidable);
        this.initFieldsCollidableDestroyableDamageableBehavior();
    }
    

    public override bool isCollision(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        if (ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]) {
            return base.isCollision(ownerLayer, collisionLayer);
        }
        return false;
    }
    

    public override void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collidableInterfaceCompositeInterface) {
        CollidableDestroyableDamageableLayer ownerCollidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) ownerLayer);
        CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) collidableInterfaceCompositeInterface);
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0);
    }
    

    public override bool isCollisionInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log("No Longer Used", this);
        return false;
    }
    

    public override void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log("No Longer Used", this);
    }
}

