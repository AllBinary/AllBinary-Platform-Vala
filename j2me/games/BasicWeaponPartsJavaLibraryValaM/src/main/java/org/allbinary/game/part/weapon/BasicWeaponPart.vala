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
// package org.allbinary.game.part.weapon
// import javax.microedition.lcdui.Graphics
// import org.allbinary.animation.Animation
// import org.allbinary.animation.NullAnimationFactory
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.part.PartInterface
// import org.allbinary.game.score.NoScoreable
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.string.CommonStrings
// import org.allbinary.view.ViewPositionBase

public class BasicWeaponPart : JObject, PartInterface, SalvoInterface, PaintableInterface, AnimationInterfaceCompositeInterface {
    public static BasicWeaponPart? NULL_BASIC_WEAPON_PART;
    private static bool staticSet_NULL_BASIC_WEAPON_PART = false;
    public static BasicWeaponPart staticGet_NULL_BASIC_WEAPON_PART() {
        if (!BasicWeaponPart.staticSet_NULL_BASIC_WEAPON_PART) {
            BasicWeaponPart.staticSet_NULL_BASIC_WEAPON_PART = true;
            BasicWeaponPart.NULL_BASIC_WEAPON_PART = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance1(0));
        }
        return BasicWeaponPart.NULL_BASIC_WEAPON_PART;
    }
    private Animation animationInterface;
    private AllBinaryLayer ownerLayerInterface;
    private WeaponProperties weaponProperties;
    private ScoreableInterface scoreableInterface;
    public RelativeRelationship relativeRelationship;

    // Java field initializers run after the base constructor
    private void initFieldsBasicWeaponPart() {
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    this.ownerLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES;
    this.scoreableInterface = NoScoreable.getInstance();
    this.relativeRelationship = RelativeRelationship.NULL_RELATIVE_RELATIONSHIP;
    }
    

    public static BasicWeaponPart createBasicWeaponPart(Animation animationInterface) {
        return new BasicWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    public BasicWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        base();
        this.initFieldsBasicWeaponPart();
        this.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.setAnimationInterface(animationInterface);
    }
    

    public virtual void init(AllBinaryLayer sourceLayerInterface, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.setWeaponProperties(weaponProperties);
        this.scoreableInterface = scoreableInterface;
        this.relativeRelationship = relativeRelationship;
    }
    

    public virtual void process(AllBinaryLayerManager allbinaryLayerManager, int16 angle, int16 otherAngle) {
        this.processScore(allbinaryLayerManager, angle, otherAngle, this.getWeaponProperties(), this.scoreableInterface);
    }
    

    public virtual void processScore(AllBinaryLayerManager allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        JSystem.fatal(new JException("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED));
    }
    

    public virtual AllBinaryLayer getOwnerLayerInterface() {
        return this.ownerLayerInterface;
    }
    

    public virtual void setOwnerLayerInterface(AllBinaryLayer ownerLayerInterface) {
        this.ownerLayerInterface = ownerLayerInterface;
    }
    

    public virtual Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    public virtual void setAnimationInterface(Animation animationInterface) {
        this.animationInterface = animationInterface;
    }
    

    public virtual void paint(Graphics graphics) {
        ViewPositionBase viewPosition = this.getOwnerLayerInterface().getViewPosition();
        int32 viewX = viewPosition.getX();
        int32 viewY = viewPosition.getY();
        this.animationInterface.paintXY(graphics, viewX, viewY);
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
    

    public virtual WeaponProperties getWeaponProperties() {
        return this.weaponProperties;
    }
    

    public virtual void setWeaponProperties(WeaponProperties weaponProperties) {
        this.weaponProperties = weaponProperties;
    }
}

