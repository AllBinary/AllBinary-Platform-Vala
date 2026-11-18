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
// package org.allbinary.game.terrain
// import org.allbinary.math.Angle
// import org.allbinary.math.AngleFactory

public class BasicTerrainInfo : JObject {
    public static BasicTerrainInfo? NULL_BASIC_TERRAIN_INFO;
    private static bool staticSet_NULL_BASIC_TERRAIN_INFO = false;
    public static BasicTerrainInfo staticGet_NULL_BASIC_TERRAIN_INFO() {
        if (!BasicTerrainInfo.staticSet_NULL_BASIC_TERRAIN_INFO) {
            BasicTerrainInfo.staticSet_NULL_BASIC_TERRAIN_INFO = true;
            BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO = new BasicTerrainInfo(AngleFactory.getInstance().NOT_ANGLE);
        }
        return BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO;
    }
    private Angle angle;

    // Java field initializers run after the base constructor
    private void initFieldsBasicTerrainInfo() {
    
    }
    

    public BasicTerrainInfo(Angle angle) {
        base();
        this.initFieldsBasicTerrainInfo();
        this.angle = angle;
    }
    

    public virtual Angle getAngle() {
        return this.angle;
    }
    

    public virtual void setAngle(Angle angle) {
        this.angle = angle;
    }
}

