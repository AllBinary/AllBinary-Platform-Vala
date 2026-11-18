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
// import org.allbinary.math.NoDecimalTrigTable

public class StraightMultiProjectileWeaponPart : BasicWeaponPart {
    private WeaponLayerCircularPool weaponLayerCircularStaticPool;
    private int32 total;
    private NoDecimalTrigTable noDecimalTrigTable;

    // Java field initializers run after the base constructor
    private void initFieldsStraightMultiProjectileWeaponPart() {
    
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
    }
    

    public static StraightMultiProjectileWeaponPart createStraightMultiProjectileWeaponPart(Animation animationInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool) {
        return new StraightMultiProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    public StraightMultiProjectileWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool, int32 total, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        base(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.initFieldsStraightMultiProjectileWeaponPart();
        this.total = total;
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    public override void processScore(AllBinaryLayerManager allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        AllBinaryLayer sourceLayerInterface = this.getOwnerLayerInterface();
        int32 reducedWidth = (sourceLayerInterface.getWidth() * 8 / 10);
        int32 halfWidth = (reducedWidth >> 1);
        int32 x = this.relativeRelationship.getX();
        int32 y = this.relativeRelationship.getY();
        int64 sine = 0;
        int32 beamX = 0;
        int64 cosine = 0;
        int32 beamY = 0;
        WeaponLayer weaponLayer = null;
        int32 increment = reducedWidth / (this.total - 1);
        int32 next = -halfWidth;
        for (int32 index = 0; index < this.total; index++) {
            sine = (((int64) (next)) * this.noDecimalTrigTable.sin(((int32) (angle))));
            beamX = ((int32) ((sine / ((int64) (this.noDecimalTrigTable.SCALE)))));
            cosine = (((int64) (next)) * this.noDecimalTrigTable.cos(((int32) (angle))));
            beamY = -((int32) ((cosine / ((int64) (this.noDecimalTrigTable.SCALE)))));
            weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x + beamX, y + beamY, 0, ((int32) (angle)), ((int32) (otherAngle)), weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += increment;
        }
    }
}

