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
// import org.allbinary.game.combat.weapon.WeaponProperties
// import org.allbinary.game.score.ScoreableInterface
// import org.allbinary.layer.AllBinaryLayer
// import org.allbinary.layer.AllBinaryLayerCircularPool

public class WeaponLayerCircularPool : AllBinaryLayerCircularPool {
    

    public WeaponLayerCircularPool() {
        base();
    }
    

    public virtual WeaponLayer getInstanceWeaponLayer(AllBinaryLayer sourceLayerInterface, int32 x, int32 y, int32 z, int32 angle, int32 otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreable) {
        WeaponLayer weaponLayer = ((WeaponLayer) base.getNextInstance());
        weaponLayer.initXYZ(x, y, z);
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable);
        return weaponLayer;
    }
}

