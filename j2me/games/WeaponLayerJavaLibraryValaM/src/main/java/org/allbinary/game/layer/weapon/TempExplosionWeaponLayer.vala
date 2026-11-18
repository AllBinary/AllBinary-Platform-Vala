// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon
// import org.allbinary.animation.Animation
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.physics.movement.Movement
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.view.ViewPositionBase

public class TempExplosionWeaponLayer : SimpleWeaponLayer {
    public WeaponProperties weaponProperties;
    private TimeDelayHelper timeDelayHelper;

    // Java field initializers run after the base constructor
    private void initFieldsTempExplosionWeaponLayer() {
    this.weaponProperties = new WeaponProperties(-(int64) 1, -(int64) 1, 0, 1000, ((int16) (0)));
    this.timeDelayHelper = new TimeDelayHelper(0);
    }
    

    public TempExplosionWeaponLayer(string name, Movement movement, Animation animationInterface, Rectangle rectangle, ViewPositionBase viewPosition, int32 timeDelay) {
        base(name, RemoteInfo.REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition);
        this.initFieldsTempExplosionWeaponLayer();
        this.timeDelayHelper.delay = timeDelay;
    }
    

    public override void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.getCollidableInferface().collide(this, this);
            this.totalDamage = this.getInitDamage() + 1;
        }
        base.processTick(allBinaryLayerManager);
    }
}

