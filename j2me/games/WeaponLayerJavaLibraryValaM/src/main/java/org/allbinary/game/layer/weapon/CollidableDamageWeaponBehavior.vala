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
// package org.allbinary.game.layer.weapon
// import org.allbinary.game.collision.CollidableHelperFactory
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.collision.CollisionHelper
// import org.allbinary.game.collision.CollisionType
// import org.allbinary.game.collision.CollisionTypeFactory
// import org.allbinary.game.combat.damage.DamageableInterface
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior
// import org.allbinary.layer.AllBinaryLayer

public class CollidableDamageWeaponBehavior : CollidableDestroyableDamageableBehavior {
    private bool collided;
    public CollisionHelper collisionHelper;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableDamageWeaponBehavior() {
    this.collided = false;
    
    }
    

    public CollidableDamageWeaponBehavior(bool collidable) {
        base(collidable);
        this.initFieldsCollidableDamageWeaponBehavior();
        this.setCollided(false);
        this.setCollidable(true);
        this.collisionHelper = CollidableHelperFactory.getInstance();
    }
    

    public virtual void init(AllBinaryLayer sourceLayerInterface) {
        this.setCollided(false);
        this.collisionHelper.setOwnerLayerInterface(sourceLayerInterface);
    }
    

    public override bool isCollision(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        if (this.collisionHelper.isCollidable(collisionLayer)) {
            if (ownerLayer.getGroupInterface()[0] != collisionLayer.getGroupInterface()[0]) {
                return base.isCollision(ownerLayer, collisionLayer);
            }
        }
        return false;
    }
    

    public override void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        base.collide(ownerLayer, collisionLayer);
        this.collided = true;
    }
    

    public override bool isCollisionInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        if (this.collisionHelper.isCollidable(((CollidableCompositeLayer) collidableInterfaceCompositeInterface))) {
            AllBinaryLayer layerInterface = ((AllBinaryLayer) collidableInterfaceCompositeInterface);
            if (ownerLayer.getGroupInterface()[0] != layerInterface.getGroupInterface()[0]) {
                if (this.layerCollisionUtil.isCollision(ownerLayer, layerInterface)) {
                    return true;
                }
            }
        }
        return false;
    }
    

    public override void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        this.damageUtil.process(((DamageableInterface) ownerLayer), ((DamageableInterface) collidableInterfaceCompositeInterface));
        this.collided = true;
    }
    

    public override CollisionType getCollisionTypeWith(AllBinaryLayer layerInterface) {
        return CollisionTypeFactory.getInstance().COLLISION;
    }
    

    public virtual bool isCollided() {
        return this.collided;
    }
    

    private void setCollided(bool collided) {
        this.collided = collided;
    }
}

