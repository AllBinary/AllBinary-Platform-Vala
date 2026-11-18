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
// package org.allbinary.business.advertisement
// import org.allbinary.direction.Direction
// import org.allbinary.game.state.GameState

public class AdConfiguration : JObject {
    public string INNERACTIVE;
    public string LEADBOLT;
    public string ADMOB;

    // Java field initializers run after the base constructor
    private void initFieldsAdConfiguration() {
    
    
    
    }
    

    public AdConfiguration(JObject[] advertIdArray) {
        base();
        this.initFieldsAdConfiguration();
        this.INNERACTIVE = JString.unbox(advertIdArray[0]);
        this.ADMOB = JString.unbox(advertIdArray[1]);
        this.LEADBOLT = JString.unbox(advertIdArray[2]);
    }
    

    public virtual Direction[] getValidAdSpots() {
        return new Direction[0];
    }
    

    public virtual void process(GameState gameState) {
    }
    

    public virtual void processDemo(int32 state) {
    }
    

    public virtual void setShowAds() {
    }
    

    public virtual void setToggleAds(bool showAds) {
    }
    

    public virtual bool isShowAds() {
        return true;
    }
}

