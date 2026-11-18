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
// import org.allbinary.game.collision.CollidableInterfaceCompositeInterface
// import org.allbinary.game.collision.CollisionType
// import org.allbinary.game.collision.CollisionTypeFactory
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.pickup.PickedUpLayerInterface
// import org.allbinary.logic.communication.log.ForcedLogUtil

public class CollidableCharacterNoDamageBehavior : CollidableDestroyableDamageableBehavior {
    

    public CollidableCharacterNoDamageBehavior(bool collidable) {
        base(collidable);
    }
    

    public override void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collidableInterfaceCompositeInterface) {
        CollisionTypeFactory collisionTypeFactory = CollisionTypeFactory.getInstance();
        CollisionType collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType == collisionTypeFactory.PICKUP) {
            CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = ((CollidableDestroyableDamageableLayer) ownerLayer);
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer(((PickedUpLayerInterface) collidableInterfaceCompositeInterface));
        } else {
        }
    }
    

    public override void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
}

