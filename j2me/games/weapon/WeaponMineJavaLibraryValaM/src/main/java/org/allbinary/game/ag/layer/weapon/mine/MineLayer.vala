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
// package org.allbinary.game.ag.layer.weapon.mine
// import org.allbinary.ag.weapon.media.audio.DropWeaponSound
// import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory
// import org.allbinary.game.layer.weapon.SimpleWeaponLayer
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.media.audio.SecondaryPlayerQueueFactory
// import org.allbinary.physics.movement.NoMovementFactory
// import org.allbinary.view.ViewPositionBase
// import org.allbinary.view.event.ViewPositionEventHandler

public class MineLayer : SimpleWeaponLayer {
    private const string NAME = "MineLayer";
    private ViewPositionEventHandler viewPositionEventHandler;

    // Java field initializers run after the base constructor
    private void initFieldsMineLayer() {
    this.viewPositionEventHandler = ViewPositionEventHandler.getInstance();
    }
    

    public MineLayer(ViewPositionBase viewPosition) {
        base(MineLayer.NAME, RemoteInfo.REMOTE_INFO, -1, NoMovementFactory.getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().@get(MineWeaponResources.getInstance().RESOURCE).getInstance1(0), SimpleWeaponLayer.createDestroyed(), new Rectangle(PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition);
        this.initFieldsMineLayer();
    }
    

    public override void initXYZ(int32 x, int32 y, int32 z) {
        this.setPosition(x + 5, y + 5, z);
        this.viewPositionEventHandler.addListener(((AllBinaryLayer) this));
        SecondaryPlayerQueueFactory.getInstance().add(DropWeaponSound.getInstance());
    }
    

    public override void damage(int32 damage, int32 damageType) {
        this.totalDamage = this.getInitDamage() + 1;
    }
    

    public override int32 getDamage(int32 damageType) {
        base.getDamage(damageType);
        return this.getInitDamage();
    }
    

    public override void setDestroyed(bool destroyed) {
        base.setDestroyed(destroyed);
        if (this.isDestroyed()) {
            this.viewPositionEventHandler.removeListener(this);
        }
    }
}

