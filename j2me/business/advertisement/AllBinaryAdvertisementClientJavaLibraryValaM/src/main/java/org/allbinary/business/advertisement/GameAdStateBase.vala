/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.game.GameType
// import org.allbinary.game.state.GameState
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings

public class GameAdStateBase : JObject {
    public AdConfiguration adConfigurationP;
    public Advertisements advertisementsP;
    public bool okayToShowAdsP;

    // Java field initializers run after the base constructor
    private void initFieldsGameAdStateBase() {
    
    this.advertisementsP = new Advertisements();
    this.okayToShowAdsP = false;
    }
    

    public GameAdStateBase(AdConfiguration adConfiguration) {
        base();
        this.initFieldsGameAdStateBase();
        this.adConfigurationP = adConfiguration;
    }
    

    public virtual void initViewArray(JObject[] viewArray) {
    }
    

    public virtual void onStart(JObject anyType) {
        this.init();
    }
    

    public virtual void init() {
    }
    

    public virtual bool isShowingAtLocation(int32 location) {
        return false;
    }
    

    public virtual bool isShowingAt() {
        return false;
    }
    

    public virtual void show() {
    }
    

    public virtual void hide() {
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void processAdState(GameState gameState, GameType gameType) {
    }
    

    public virtual void processPageAdState() {
    }
    

    public virtual void playingAdState() {
    }
    

    public virtual void playingAdStateWH(int32 width, int32 height) {
    }
    

    public virtual void notPlayingAdState() {
    }
    

    public virtual void setGameIsReady(bool gameIsReady) {
    }
    

    public virtual bool isGameIsReady() {
        return false;
    }
    

    public virtual Advertisements getAdvertisements() {
        return this.advertisementsP;
    }
    

    public virtual AdConfiguration getAdConfiguration() {
        return this.adConfigurationP;
    }
    

    public virtual bool isOkayToShowPageAd() {
        return false;
    }
    

    public virtual void setOkayToShowAds(bool okayToShowAds) {
        this.okayToShowAdsP = okayToShowAds;
    }
    

    public virtual bool isOkayToShowAds() {
        return this.okayToShowAdsP;
    }
    

    public virtual bool isEnabled() {
        return false;
    }
}

