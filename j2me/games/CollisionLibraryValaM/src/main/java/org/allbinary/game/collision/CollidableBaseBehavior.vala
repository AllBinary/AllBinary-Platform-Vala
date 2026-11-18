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
// package org.allbinary.game.collision
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

public class CollidableBaseBehavior : JObject, CollidableInterface, NamedInterface {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public LayerCollisionUtil layerCollisionUtil;
    private bool collidable;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableBaseBehavior() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.layerCollisionUtil = LayerCollisionUtil.getInstance();
    this.collidable = true;
    }
    

    public CollidableBaseBehavior(bool collidable) {
        base();
        this.initFieldsCollidableBaseBehavior();
        this.collidable = collidable;
    }
    

    public virtual void update() {
    }
    

    public virtual string getName() {
        return JObject.className(this);
    }
    

    public virtual void setCollidable(bool collidable) {
        this.collidable = collidable;
    }
    

    public virtual bool isCollidable(CollidableCompositeLayer ownerLayer) {
        return this.collidable;
    }
    

    public virtual void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer allbinaryCollidableLayer) {
        JSystem.fatal(new JException("Exception", new StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(CommonLabels.getInstance().COLON_SEP).append(JObject.className(this)).toString()));
    }
    

    public virtual bool isCollision(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        return this.layerCollisionUtil.isCollision(ownerLayer, collisionLayer);
    }
    

    public virtual bool isCollisionInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        return this.layerCollisionUtil.isCollision(ownerLayer, ((AllBinaryLayer) collidableInterfaceCompositeInterface));
    }
    

    public virtual void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void paint(CollidableCompositeLayer ownerLayer, Graphics graphics) {
    }
    

    public virtual CollisionType getCollisionTypeWith(AllBinaryLayer layerInterface) {
        return CollisionTypeFactory.getInstance().NONE;
    }
}

