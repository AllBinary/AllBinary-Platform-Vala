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
// package org.allbinary.game.midlet
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class DemoGameMidletEvent : AllBinaryEventObject {
    private DemoGameMidletState demoGameMidletState;

    // Java field initializers run after the base constructor
    private void initFieldsDemoGameMidletEvent() {
    
    }
    

    public DemoGameMidletEvent(JObject anyType, DemoGameMidletState demoGameMidletState) {
        base(anyType);
        this.initFieldsDemoGameMidletEvent();
        this.demoGameMidletState = demoGameMidletState;
    }
    

    public virtual void init(JObject anyType) {
        this.setSource(anyType);
    }
    

    public virtual void setDemoGameMidletState(DemoGameMidletState demoGameMidletState) {
        this.demoGameMidletState = demoGameMidletState;
    }
    

    public virtual DemoGameMidletState getDemoGameMidletState() {
        return this.demoGameMidletState;
    }
}

