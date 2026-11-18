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
// import org.allbinary.game.resource.ResourceLoadingLevel
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class GameInitializedEvent : AllBinaryEventObject {
    private ResourceLoadingLevel resourceLoadingLevel;
    private int32 level;

    // Java field initializers run after the base constructor
    private void initFieldsGameInitializedEvent() {
    this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL;
    this.level = 0;
    }
    

    public GameInitializedEvent(JObject anyType) {
        base(anyType);
        this.initFieldsGameInitializedEvent();
    }
    

    public virtual void setLevel(int32 level) {
        this.level = level;
        this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL;
    }
    

    public virtual int32 getLevel() {
        return this.level;
    }
    

    public virtual void setResourceLoadingLevel(ResourceLoadingLevel resourceLoadingLevel) {
        this.resourceLoadingLevel = resourceLoadingLevel;
        this.level = this.resourceLoadingLevel.getLevel();
    }
    

    public virtual ResourceLoadingLevel getResourceLoadingLevel() {
        return this.resourceLoadingLevel;
    }
}

