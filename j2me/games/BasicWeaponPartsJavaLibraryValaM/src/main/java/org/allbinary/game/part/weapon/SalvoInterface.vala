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
// import org.allbinary.layer.AllBinaryLayerManager

public interface SalvoInterface : JObject {
    

    public abstract void process(AllBinaryLayerManager allbinaryLayerManager, int16 angle, int16 otherAngle);
    

    public abstract void processScore(AllBinaryLayerManager allbinaryLayerManager, int16 angle, int16 otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface);
}

