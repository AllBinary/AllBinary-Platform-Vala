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
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.graphics.RelativeRelationship
// import org.allbinary.layer.AllBinaryLayer

public class BasicWeaponPartCircularPool : JObject {
    public static BasicWeaponPartCircularPool? NULL_BASIC_WEAPON_PART_CIRCULAR_POOL;
    private static bool staticSet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = false;
    public static BasicWeaponPartCircularPool staticGet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL() {
        if (!BasicWeaponPartCircularPool.staticSet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL) {
            BasicWeaponPartCircularPool.staticSet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = true;
            BasicWeaponPartCircularPool.NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = new BasicWeaponPartCircularPool();
        }
        return BasicWeaponPartCircularPool.NULL_BASIC_WEAPON_PART_CIRCULAR_POOL;
    }
    private BasicWeaponPart basicWeaponPart;

    // Java field initializers run after the base constructor
    private void initFieldsBasicWeaponPartCircularPool() {
    this.basicWeaponPart = BasicWeaponPart.NULL_BASIC_WEAPON_PART;
    }

    public BasicWeaponPartCircularPool() {
        base();
        this.initFieldsBasicWeaponPartCircularPool();
    }
    

    public virtual void init(BasicWeaponPartFactoryInterface basicWeaponPartFactoryInterface) {
        this.basicWeaponPart = basicWeaponPartFactoryInterface.getInstance();
    }
    

    public virtual BasicWeaponPart getInstance4(AllBinaryLayer sourceLayerInterface, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        this.basicWeaponPart.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return this.basicWeaponPart;
    }
}

