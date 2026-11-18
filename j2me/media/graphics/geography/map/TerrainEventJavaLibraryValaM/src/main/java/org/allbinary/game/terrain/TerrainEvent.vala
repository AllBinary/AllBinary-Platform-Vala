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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class TerrainEvent : AllBinaryEventObject {
    private BasicTerrainInfo basicTerrainInfo;

    // Java field initializers run after the base constructor
    private void initFieldsTerrainEvent() {
    this.basicTerrainInfo = BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO;
    }
    

    public TerrainEvent(JObject basicTerrainInfo) {
        base(basicTerrainInfo);
        this.initFieldsTerrainEvent();
        this.setBasicTerrainInfo(this.basicTerrainInfo);
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("TerrainEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.basicTerrainInfo.toString());
        return stringBuffer.toString();
    }
    

    public virtual BasicTerrainInfo getBasicTerrainInfo() {
        return this.basicTerrainInfo;
    }
    

    public virtual void setBasicTerrainInfo(BasicTerrainInfo basicTerrainInfo) {
        this.basicTerrainInfo = basicTerrainInfo;
    }
    

    public virtual void setBasicTerrainInfoForCircularStaticPool(BasicTerrainInfo basicTerrainInfo) {
        this.basicTerrainInfo = basicTerrainInfo;
    }
}

