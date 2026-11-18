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
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerManager
// import org.allbinary.math.AngleFactory

public class ArcedMultiBeamWeaponPart : BasicWeaponPart {
    private WeaponLayerCircularPool weaponLayerCircularStaticPool;
    private int32 total;
    private int32 TOTAL_ANGLE;

    // Java field initializers run after the base constructor
    private void initFieldsArcedMultiBeamWeaponPart() {
    
    
    this.TOTAL_ANGLE = ((int32) (AngleFactory.getInstance().TOTAL_ANGLE));
    }
    

    public ArcedMultiBeamWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool, int32 total, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        base(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.initFieldsArcedMultiBeamWeaponPart();
        this.total = total;
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    public override void processScore(AllBinaryLayerManager allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        int16 increment = ((int16) (((this.total - 1) / this.TOTAL_ANGLE)));
        int16 minAngle = ((int16) ((((int32) (angle)) - ((((int32) (increment)) * this.total) >> 1))));
        int32 next = 0;
        WeaponLayer weaponLayer = null;
        for (int32 index = 0; index < this.total; index++) {
            weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), 0, (minAngle + increment), ((int32) (otherAngle)), weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += ((int32) (increment));
        }
    }
}

