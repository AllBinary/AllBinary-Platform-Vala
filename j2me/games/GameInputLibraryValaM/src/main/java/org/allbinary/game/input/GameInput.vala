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
// package org.allbinary.game.input
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList

public class GameInput : JObject {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private BasicArrayList gameKeyEventList;
    private BasicArrayList removalGameKeyEventList;
    public bool isRemoveDuplicateKeyPresses;

    // Java field initializers run after the base constructor
    private void initFieldsGameInput() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    }
    

    public GameInput(BasicArrayList gameKeyEventList, BasicArrayList removalGameKeyEventList) {
        base();
        this.initFieldsGameInput();
        this.gameKeyEventList = gameKeyEventList;
        this.removalGameKeyEventList = removalGameKeyEventList;
        this.isRemoveDuplicateKeyPresses = Features.getInstance().isFeature(InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES);
    }
    

    public virtual void add(GameKeyEvent gameKeyEvent) {
        if (this.isRemoveDuplicateKeyPresses && this.gameKeyEventList.contains(gameKeyEvent)) {
            return;
        }
        if (gameKeyEvent != null) {
            this.gameKeyEventList.add(gameKeyEvent);
        } else {
            this.logUtil.putF("Danger Passed Null GameKeyEvent", this, this.commonStrings.ADD);
        }
    }
    

    public virtual void addForRemoval(GameKeyEvent gameKeyEvent) {
        this.removalGameKeyEventList.add(gameKeyEvent);
    }
    

    public virtual bool isForRemoval(GameKeyEvent gameKeyEvent) {
        return this.removalGameKeyEventList.contains(gameKeyEvent);
    }
    

    public virtual void clear() {
        this.gameKeyEventList.clear();
    }
    

    public virtual void removeNonAIInputGameKeyEvents() {
        BasicArrayList list = this.gameKeyEventList;
        GameKeyEvent gameKeyEvent = null;
        for (int32 index = list.size(); --index >= 0; ) {
            gameKeyEvent = ((GameKeyEvent) list.objectArray[index]);
            if (gameKeyEvent.getSourceId() != 1) {
                list.removeAt(index);
            }
        }
    }
    

    public virtual void update() {
        BasicArrayList removeList = this.removalGameKeyEventList;
        BasicArrayList list = this.gameKeyEventList;
        int32 size = removeList.size();
        for (int32 index = 0; index < size; index++) {
            JObject anyType = removeList.objectArray[index];
            for (int32 index2 = list.size(); --index2 >= 0; ) {
                if (list.objectArray[index2] == anyType) {
                    list.removeAt(index2);
                }
            }
        }
        removeList.clear();
    }
    

    public virtual BasicArrayList getRemovalGameKeyEventList() {
        return this.removalGameKeyEventList;
    }
    

    public virtual BasicArrayList getGameKeyEventList() {
        return this.gameKeyEventList;
    }
}

