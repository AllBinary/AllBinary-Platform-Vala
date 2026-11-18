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
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.Rectangle
// import org.allbinary.physics.movement.Movement
// import org.allbinary.view.ViewPositionBase

public class DamageWeaponLayer : WeaponLayer {
    

    public DamageWeaponLayer(string name, RemoteInfo remoteInfo, Movement movement, Animation animationInterface, Animation destroyedAnimationInterface, Rectangle rectangle, ViewPositionBase viewPosition, string username, int32 actorSessionId, int32 id, int32 multiPlayerType) {
        base(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        this.setCollidableInferface(new CollidableDamageWeaponBehavior(true));
    }
}

