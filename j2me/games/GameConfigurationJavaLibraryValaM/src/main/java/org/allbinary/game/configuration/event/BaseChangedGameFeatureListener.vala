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
// package org.allbinary.game.configuration.event
// import org.allbinary.game.configuration.feature.Feature
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureUtil
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class BaseChangedGameFeatureListener : JObject, GameFeatureListenerInterface, EventListenerInterface {
    public LogUtil logUtil;
    public GameFeatureUtil gameFeatureUtil;
    public BasicArrayList list;
    private bool changed;

    // Java field initializers run after the base constructor
    private void initFieldsBaseChangedGameFeatureListener() {
    this.logUtil = LogUtil.getInstance();
    this.gameFeatureUtil = GameFeatureUtil.getInstance();
    this.list = new BasicArrayListD();
    this.changed = true;
    }

    public BaseChangedGameFeatureListener() {
        base();
        this.initFieldsBaseChangedGameFeatureListener();
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(CommonStrings.getInstance().NOT_IMPLEMENTED, this);
    }
    

    public virtual void onGameFeatureChange(GameFeatureEvent gameFeatureEvent) {
        this.logUtil.putF(new StringMaker().append(this.gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).toString(), this, this.gameFeatureUtil.ON_GAME_FEATURE_CHANGE);
        this.list.add(gameFeatureEvent.getGameOption());
        this.setChanged(true);
    }
    

    public virtual void add(Feature gameFeature) {
        this.list.add(gameFeature);
    }
    

    public virtual void remove(Feature gameFeature) {
        this.list.remove(gameFeature);
    }
    

    public virtual void setChanged(bool initialized) {
        this.changed = initialized;
        if (!this.isChanged()) {
            this.list.clear();
        }
    }
    

    public virtual bool isChangedFeature(Feature gameFeature) {
        bool isChanged = this.list.contains(gameFeature);
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("GameFeature: ");
        stringBuffer.append(StringUtil.getInstance().toString1(gameFeature));
        stringBuffer.append(" isFeature: ");
        stringBuffer.appendboolean(Features.getInstance().isFeature(gameFeature));
        stringBuffer.append(" isChanged: ");
        stringBuffer.appendboolean(isChanged);
        this.logUtil.putF(stringBuffer.toString(), this, "isChanged");
        return isChanged;
    }
    

    public virtual bool isChanged() {
        return this.changed;
    }
}

