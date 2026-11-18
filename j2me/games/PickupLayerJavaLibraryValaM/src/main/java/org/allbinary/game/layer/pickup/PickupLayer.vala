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
// package org.allbinary.game.layer.pickup
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory
// import org.allbinary.game.combat.destroy.DestroyedLayerProcessor
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer
// import org.allbinary.game.multiplayer.layer.RemoteInfo
// import org.allbinary.graphics.Rectangle
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
// import org.allbinary.view.ViewPositionBase

public class PickupLayer : MultiPlayerGameLayer, PickedUpLayerInterface, PickupableInterface, LayerInterface, NamedInterface, PaintableInterface, GroupInterfaceCompositeInterface, PositionInterface {
    private PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface;
    private bool destroyed;
    private Animation animationInterface;

    // Java field initializers run after the base constructor
    private void initFieldsPickupLayer() {
    this.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    this.destroyed = false;
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    public PickupLayer(string name, RemoteInfo remoteInfo, int32 total, PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface, Animation animationInterface, Rectangle rectangle, ViewPositionBase viewPosition) {
        base(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition);
        this.initFieldsPickupLayer();
        this.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior());
        this.setLayerWidth(10);
        this.setLayerHeight(10);
        this.init(pickedUpLayerInterfaceFactoryInterface, animationInterface);
    }
    

    public virtual void init(PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface, Animation animationInterface) {
        this.pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface;
        this.animationInterface = animationInterface;
        this.setDestroyed(false);
    }
    

    public virtual void initXYZ(int32 x, int32 y, int32 z) {
        this.setPosition(x, y, z);
    }
    

    public override void paint(Graphics graphics) {
        ViewPositionBase viewPosition = this.getViewPosition();
        int32 viewX = viewPosition.getX();
        int32 viewY = viewPosition.getY();
        this.animationInterface.paintXY(graphics, viewX, viewY);
    }
    

    public override void paintThreed(Graphics graphics) {
        ViewPositionBase viewPosition = this.getViewPosition();
        int32 viewX = viewPosition.getX();
        int32 viewY = viewPosition.getY();
        this.animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3);
    }
    

    public virtual PickedUpLayerInterfaceFactoryInterface getPickedUpLayerInterfaceFactoryInterface() {
        return this.pickedUpLayerInterfaceFactoryInterface;
    }
    

    public virtual void setPickedUp() {
        this.setDestroyed(true);
    }
    

    public override bool isDestroyed() {
        return this.destroyed;
    }
    

    public virtual void setDestroyed(bool destroyed) {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(this);
        }
    }
    

    public override void damage(int32 damage, int32 damageType) {
    }
    

    public override int32 getDamage(int32 damageType) {
        return 0;
    }
    

    public override void @set(GL gl) {
        OpenGLSurfaceChangedInterface openGLSurfaceChangedInterface = ((OpenGLSurfaceChangedInterface) this.animationInterface);
        openGLSurfaceChangedInterface.@set(gl);
    }
}

