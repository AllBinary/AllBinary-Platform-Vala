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
// import org.allbinary.animation.Animation
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.animation.NullIndexedAnimationFactory
// import org.allbinary.game.combat.damage.ExplosionResources
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.Rectangle
// import org.allbinary.physics.movement.Movement
// import org.allbinary.view.ViewPositionBase

public class SimpleWeaponLayer : WeaponLayer {
    

    public static Animation createDestroyed() {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getProcedural(ExplosionResources.getInstance().THIRD_EXPLOSION_RESOURCE).getInstanceAnimation(NullIndexedAnimationFactory.getFactoryInstance().getInstance1(0));
    }
    

    public SimpleWeaponLayer(string name, RemoteInfo remoteInfo, int32 multiPlayerType, Movement movement, Animation animationInterface, Animation destroyedAnimationInterface, Rectangle rectangle, ViewPositionBase viewPosition) {
        base(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        this.setCollidableInferface(new CollidableWeaponBehavior(true));
    }
}

