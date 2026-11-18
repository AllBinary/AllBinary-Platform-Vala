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
// import org.allbinary.logic.NullUtil

public class CollidableWeaponBehavior : CollidableDestroyableDamageableBehavior {
    private static JObject? NULL_COLLIDABLE_WEAPON_BEHAVIOR;
    private static bool staticSet_NULL_COLLIDABLE_WEAPON_BEHAVIOR = false;
    private static JObject staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR() {
        if (!CollidableWeaponBehavior.staticSet_NULL_COLLIDABLE_WEAPON_BEHAVIOR) {
            CollidableWeaponBehavior.staticSet_NULL_COLLIDABLE_WEAPON_BEHAVIOR = true;
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR = NullUtil.getInstance().NULL_OBJECT;
        }
        return CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR;
    }
    private bool collided;
    public CollisionHelper collisionHelper;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableWeaponBehavior() {
    this.collided = false;
    
    }
    

    public static CollidableWeaponBehavior getNullInstance() {
        if (CollidableWeaponBehavior.staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR() == NullUtil.getInstance().NULL_OBJECT) {
            CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR = new CollidableWeaponBehavior(false);
        }
        return ((CollidableWeaponBehavior) CollidableWeaponBehavior.staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR());
    }
    

    public CollidableWeaponBehavior(bool collidable) {
        base(collidable);
        this.initFieldsCollidableWeaponBehavior();
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
        DamageableInterface ownerDamageableInterface = ((DamageableInterface) ownerLayer);
        DamageableInterface damageableInterface = ((DamageableInterface) collidableInterfaceCompositeInterface);
        this.damageUtil.process(ownerDamageableInterface, damageableInterface);
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

