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
// import org.allbinary.animation.Animation
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.layer.weapon.WeaponLayer
// import org.allbinary.game.layer.weapon.WeaponLayerCircularPool
// import org.allbinary.game.score.NoScoreable
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager

public class BasicProjectileWeaponPart : BasicWeaponPart {
    private WeaponLayerCircularPool weaponLayerCircularStaticPool;

    // Java field initializers run after the base constructor
    private void initFieldsBasicProjectileWeaponPart() {
    
    }
    

    public static BasicProjectileWeaponPart createBasicProjectileWeaponPart(Animation animationInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool) {
        return new BasicProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    public BasicProjectileWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        base(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.initFieldsBasicProjectileWeaponPart();
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    public override void processScore(AllBinaryLayerManager allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        WeaponLayer weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), this.relativeRelationship.getZ(), ((int32) (angle)), ((int32) (otherAngle)), weaponProperties, scoreableInterface);
        allbinaryLayerManager.append(weaponLayer);
    }
}

