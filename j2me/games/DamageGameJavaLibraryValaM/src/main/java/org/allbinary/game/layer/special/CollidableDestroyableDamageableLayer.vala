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
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory
// import org.allbinary.game.combat.damage.DamageableInterface
// import org.allbinary.game.combat.destroy.DestroyableInterface
// import org.allbinary.game.combat.destroy.event.DestroyedEvent
// import org.allbinary.game.identification.BasicGroupFactory
// import org.allbinary.game.identification.Group
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.CollidableCompositeLayer
// import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface
// import org.allbinary.game.layer.pickup.PickupBehavior
// import org.allbinary.game.layer.pickup.PickupCompositeInterface
// import org.allbinary.game.part.PartInterface
// import org.allbinary.game.part.PartInterfaceUtil
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.RectangleFactory
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.math.PositionStrings
// import org.allbinary.string.CommonSeps
// import org.allbinary.view.ViewPositionBase

public class CollidableDestroyableDamageableLayer : CollidableCompositeLayer, DestroyableInterface, DamageableInterface, PickupCompositeInterface, SpecialGameInputInterface, NamedInterface, PaintableInterface {
    private static JObject? NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER;
    private static bool staticSet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = false;
    private static JObject staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER() {
        if (!CollidableDestroyableDamageableLayer.staticSet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) {
            CollidableDestroyableDamageableLayer.staticSet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = true;
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = NullUtil.getInstance().NULL_OBJECT;
        }
        return CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER;
    }
    private const string READYFOREXPLOSION = "ReadyForExplosion: ";
    private Group[] groupInterface;
    private bool readyForExplosion;
    private int32 initWidth;
    private int32 initHeight;
    private int32 initX;
    private int32 initY;
    private int32 initZ;
    public PartInterface[] partInterfaceArrayP;
    private PickupBehavior pickupBehavior;
    public AllBinaryGameLayerManager allBinaryGameLayerManagerP;
    public bool isDraggable;
    public bool isDragged;
    public bool isDropped;

    // Java field initializers run after the base constructor
    private void initFieldsCollidableDestroyableDamageableLayer() {
    
    this.readyForExplosion = false;
    
    
    this.initX = 0;
    this.initY = 0;
    this.initZ = 0;
    this.partInterfaceArrayP = PartInterfaceUtil.getZeroArray();
    
    this.allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance();
    this.isDraggable = false;
    this.isDragged = false;
    this.isDropped = false;
    }
    

    public static CollidableDestroyableDamageableLayer getNullInstance() {
        if (CollidableDestroyableDamageableLayer.staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER() == NullUtil.getInstance().NULL_OBJECT) {
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = new CollidableDestroyableDamageableLayer(BasicGroupFactory.getInstance().NONE_ARRAY, StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION);
        }
        return ((CollidableDestroyableDamageableLayer) CollidableDestroyableDamageableLayer.staticGet_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER());
    }
    

    public CollidableDestroyableDamageableLayer(Group[] groupInterface, string name, Rectangle layerInfo, ViewPositionBase viewPosition) {
        base(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance());
        this.initFieldsCollidableDestroyableDamageableLayer();
        this.initWidth = layerInfo.getWidth();
        this.initHeight = layerInfo.getHeight();
        this.groupInterface = groupInterface;
        this.pickupBehavior = PickupBehavior.getNullInstance();
    }
    

    public virtual void initPosition() {
        this.setPosition(this.initX, this.initY, this.initZ);
    }
    

    public virtual void initPositionXYZ(int32 x, int32 y, int32 z) {
        this.initX = x;
        this.initY = y;
        this.initZ = z;
    }
    

    public override void paint(Graphics graphics) {
        base.paint(graphics);
    }
    

    public virtual void damage(int32 damage, int32 damageType) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual int32 getDamage(int32 damageType) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual bool isDestroyed() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public override Group[] getGroupInterface() {
        return this.groupInterface;
    }
    

    public virtual void setGroupInterface(Group[] teamInterface) {
        this.groupInterface = teamInterface;
    }
    

    public virtual void setAllBinaryGameLayerManager(AllBinaryGameLayerManager allBinaryGameLayerManager) {
        this.allBinaryGameLayerManagerP = allBinaryGameLayerManager;
        if (this.allBinaryGameLayerManagerP == null) {
            JSystem.fatal(new JException("RuntimeException", ""));
        }
    }
    

    public virtual bool isReadyForExplosion() {
        return this.readyForExplosion;
    }
    

    public virtual void setReadyForExplosion(bool isReadyForExplosion) {
        this.readyForExplosion = isReadyForExplosion;
    }
    

    public virtual int32 getInitWidth() {
        return this.initWidth;
    }
    

    public virtual int32 getInitHeight() {
        return this.initHeight;
    }
    

    public virtual int32 getInitX() {
        return this.initX;
    }
    

    public virtual int32 getInitY() {
        return this.initY;
    }
    

    public virtual void up() {
    }
    

    public virtual void down() {
    }
    

    public virtual void right() {
    }
    

    public virtual void left() {
    }
    

    public virtual void strafeLeft() {
    }
    

    public virtual void strafeRight() {
    }
    

    public virtual void fire(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void special1(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void special2(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void special3(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void special4(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void special5(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    public virtual void upAnalog(int32 yAnalogValue) {
    }
    

    public virtual void downAnalog(int32 yAnalogValue) {
    }
    

    public virtual void rightAnalog(int32 xAnalogValue) {
    }
    

    public virtual void leftAnalog(int32 xAnalogValue) {
    }
    

    public virtual void rightTrigger(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent, int32 xAnalogValue) {
    }
    

    public virtual void leftTrigger(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent, int32 xAnalogValue) {
    }
    

    public virtual void onDestroyed(DestroyedEvent destroyedEvent) {
    }
    

    public virtual PickupBehavior getPickupBehavior() {
        return this.pickupBehavior;
    }
    

    public virtual void setPickupBehavior(PickupBehavior pickupBehavior) {
        this.pickupBehavior = pickupBehavior;
    }
    

    public virtual void addPart(PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface) {
    }
    

    public virtual void setPartInterfaceArray(PartInterface[] partInterfaceArray) {
        this.partInterfaceArrayP = partInterfaceArray;
    }
    

    public virtual PartInterface[] getPartInterfaceArray() {
        return this.partInterfaceArrayP;
    }
    

    public override void toStringAppend(StringMaker stringBuffer) {
        CommonSeps commonSeps = CommonSeps.getInstance();
        PositionStrings positionStrings = PositionStrings.getInstance();
        base.toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        Group[] groupInterfaceArray = this.getGroupInterface();
        int32 size = groupInterfaceArray.length;
        for (int32 index = 0; index < size; index++) {
            stringBuffer.append(groupInterfaceArray[index].toString());
            stringBuffer.append(commonSeps.COMMA);
        }
        PickupBehavior pickupBehavior = this.getPickupBehavior();
        if (pickupBehavior != null) {
            stringBuffer.append(commonSeps.NEW_LINE);
            stringBuffer.append(pickupBehavior.toString());
        }
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(CollidableDestroyableDamageableLayer.READYFOREXPLOSION);
        stringBuffer.appendboolean(this.readyForExplosion);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.commonStrings.INIT);
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.initX);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.initX);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.initZ);
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

