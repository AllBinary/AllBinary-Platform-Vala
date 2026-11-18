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
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class GameFeatureEvent : AllBinaryEventObject {
    private string whatChanged;

    // Java field initializers run after the base constructor
    private void initFieldsGameFeatureEvent() {
    
    }
    

    public GameFeatureEvent(JObject anyType, string whatChanged) {
        base(anyType);
        this.initFieldsGameFeatureEvent();
        this.whatChanged = whatChanged;
    }
    

    public virtual string getWhatChanged() {
        return this.whatChanged;
    }
    

    public virtual JObject getGameOption() {
        return this.getSource();
    }
}

