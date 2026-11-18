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
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.IndexedAnimation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.collision.CollidableBaseBehavior
// import org.allbinary.game.combat.destroy.DestroyedLayerProcessor
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.configuration.GameConfigurationUtil
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.game.score.NoScoreable
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.game.tick.TickableInterface
// import org.allbinary.graphics.Rectangle
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.physics.movement.Movement
// import org.allbinary.view.ViewPosition
// import org.allbinary.view.ViewPositionBase

public class WeaponLayer : MultiPlayerGameLayer, TickableInterface, NamedInterface {
    private Animation animationInterface;
    public Animation initAnimationInterface;
    private Animation destroyedAnimationInterface;
    private AllBinaryLayer sourceLayerInterface;
    public int32 totalDamage;
    private int32 initDamage;
    private bool destroyed;
    public ScoreableInterface scoreableInterface;
    private Movement movement;
    private WeaponProperties weaponProperties;
    private int32 multiPlayerType;
    private CollidableWeaponBehavior collidableWeaponBehavior;

    // Java field initializers run after the base constructor
    private void initFieldsWeaponLayer() {
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    
    
    this.sourceLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    this.totalDamage = 0;
    this.initDamage = 0;
    this.destroyed = true;
    this.scoreableInterface = NoScoreable.getInstance();
    
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES;
    
    this.collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance();
    }
    

    public WeaponLayer(string name, RemoteInfo remoteInfo, int32 multiPlayerType, Movement movement, Animation animationInterface, Animation destroyedAnimationInterface, Rectangle rectangle, ViewPositionBase viewPosition) {
        base(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition);
        this.initFieldsWeaponLayer();
        this.initAnimationInterface = animationInterface;
        this.setAnimationInterface(animationInterface);
        this.destroyedAnimationInterface = destroyedAnimationInterface;
        this.movement = movement;
        this.multiPlayerType = multiPlayerType;
    }
    

    public override void setCollidableInferface(CollidableBaseBehavior collidableInferface) {
        base.setCollidableInferface(collidableInferface);
        this.collidableWeaponBehavior = ((CollidableWeaponBehavior) this.getCollidableInferface());
    }
    

    public virtual void initXYZ(int32 x, int32 y, int32 z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    public virtual void init(AllBinaryLayer sourceLayerInterface, int32 angle, int32 otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreable) {
        this.setWeaponPropertiesP(weaponProperties);
        this.setReadyForExplosion(false);
        this.setAnimationInterface(this.getInitAnimationInterfaceP());
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.collidableWeaponBehavior.init(sourceLayerInterface);
        this.setGroupInterfaces();
        if (scoreable != null) {
            this.scoreableInterface = scoreable;
        }
        this.totalDamage = 0;
        this.initDamage = weaponProperties.getDamage();
        this.setDestroyed(false);
        this.movement.init(weaponProperties.getSpeed(), angle, otherAngle);
    }
    

    public virtual void setGroupInterfaces() {
        BasicGroupFactory basicGroupFactory = BasicGroupFactory.getInstance();
        if (this.sourceLayerInterface.getGroupInterface()[0] == basicGroupFactory.ENEMY) {
            this.setGroupInterface(basicGroupFactory.ENEMY_ARRAY);
        } else {
            this.setGroupInterface(this.sourceLayerInterface.getGroupInterface());
        }
    }
    

    public override void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.isExhausted() && !this.isDestroyed()) {
            if (this.isReadyForExplosion()) {
                IndexedAnimation indexedAnimationInterface = ((IndexedAnimation) this.getAnimationInterface());
                int32 currentFrame = indexedAnimationInterface.getFrame();
                if (currentFrame < indexedAnimationInterface.getAnimationSize() - 1) {
                    indexedAnimationInterface.nextFrame();
                } else {
                    this.setDestroyed(true);
                }
            } else {
                CollidableWeaponBehavior collidableWeaponBehavior = ((CollidableWeaponBehavior) this.getCollidableInferface());
                if (collidableWeaponBehavior.isCollided()) {
                    this.setAnimationInterface(this.destroyedAnimationInterface);
                    this.getMovement().stop();
                    this.setReadyForExplosion(true);
                } else {
                    this.setDestroyed(true);
                }
            }
        }
        this.movement.process(this);
        this.totalDamage += ((int32) (this.weaponProperties.getDissipation()));
    }
    

    public override bool isDestroyed() {
        return this.destroyed;
    }
    

    public override void damage(int32 damage, int32 damageType) {
        this.totalDamage += damage * damage;
    }
    

    public virtual void givePoints(int32 total) {
        this.scoreableInterface.addPoints(GameConfigurationUtil.getInstance().getCompetitionValue() * total);
    }
    

    public virtual bool isExhausted() {
        if (this.totalDamage > this.getInitDamage() || this.totalDamage < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    public override int32 getDamage(int32 damageType) {
        if (!this.isExhausted()) {
            int32 total = this.getInitDamage() - this.totalDamage;
            this.givePoints(total);
            return total;
        }
        return 0;
    }
    

    public virtual void setDestroyed(bool destroyed) {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            this.scoreableInterface = NoScoreable.getInstance();
            DestroyedLayerProcessor.getInstance().add(this);
        }
    }
    

    public virtual int32 getInitDamage() {
        return this.initDamage;
    }
    

    public virtual void setAnimationInterface(Animation animationInterface) {
        this.animationInterface = animationInterface;
    }
    

    public virtual Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    public virtual Animation getInitAnimationInterfaceP() {
        return this.initAnimationInterface;
    }
    

    public virtual void setInitAnimationInterfaceP(Animation initAnimationInterface) {
        this.initAnimationInterface = initAnimationInterface;
    }
    

    public virtual Animation getDestroyedAnimationInterface() {
        return this.destroyedAnimationInterface;
    }
    

    public virtual AllBinaryLayer getOwnerLayerInterface() {
        return this.sourceLayerInterface;
    }
    

    public virtual void setOwnerLayerInterface(AllBinaryLayer sourceLayerInterface) {
        this.sourceLayerInterface = sourceLayerInterface;
    }
    

    public override void paint(Graphics graphics) {
        ViewPositionBase viewPosition = this.getViewPosition();
        this.animationInterface.paintXY(graphics, viewPosition.getX() - this.getHalfWidth(), viewPosition.getY() - this.getHalfHeight());
    }
    

    public override void paintThreed(Graphics graphics) {
        ViewPositionBase viewPosition = this.getViewPosition();
        this.animationInterface.paintThreedXYZ(graphics, viewPosition.getX() - this.getHalfWidth(), viewPosition.getY() - this.getHalfHeight(), viewPosition.getZ() - this.getHalfDepth());
    }
    

    public virtual Movement getMovement() {
        return this.movement;
    }
    

    public virtual void setMovement(Movement movement) {
        this.movement = movement;
    }
    

    public override int32 getType() {
        return WeaponLayer.getStaticType();
    }
    

    public static int32 getStaticType() {
        return 0;
    }
    

    public override int32 getMultiPlayerType() {
        return this.multiPlayerType;
    }
    

    public virtual void setWeaponPropertiesP(WeaponProperties weaponProperties) {
        this.weaponProperties = weaponProperties;
    }
    

    public virtual WeaponProperties getWeaponPropertiesP() {
        return this.weaponProperties;
    }
    

    public override bool implmentsTickableInterface() {
        return true;
    }
    

    public override void @set(GL gl) {
        this.initAnimationInterface.@set(gl);
    }
}

