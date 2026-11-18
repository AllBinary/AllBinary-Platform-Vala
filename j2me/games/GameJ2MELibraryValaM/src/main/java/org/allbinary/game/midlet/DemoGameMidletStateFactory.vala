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

public class DemoGameMidletStateFactory : JObject {
    private static DemoGameMidletStateFactory? STATE;
    private static bool staticSet_STATE = false;
    private static DemoGameMidletStateFactory staticGet_STATE() {
        if (!DemoGameMidletStateFactory.staticSet_STATE) {
            DemoGameMidletStateFactory.staticSet_STATE = true;
            DemoGameMidletStateFactory.STATE = new DemoGameMidletStateFactory();
        }
        return DemoGameMidletStateFactory.STATE;
    }
    public DemoGameMidletState NONE;
    public DemoGameMidletState START_DEMO;
    public DemoGameMidletState START_GAME;
    public DemoGameMidletState START_INPUT_MAPPING;

    // Java field initializers run after the base constructor
    private void initFieldsDemoGameMidletStateFactory() {
    this.NONE = new DemoGameMidletState();
    this.START_DEMO = new DemoGameMidletState();
    this.START_GAME = new DemoGameMidletState();
    this.START_INPUT_MAPPING = new DemoGameMidletState();
    }
    

    public DemoGameMidletStateFactory() {
        base();
        this.initFieldsDemoGameMidletStateFactory();
    }
    

    public static DemoGameMidletStateFactory getInstance() {
        return DemoGameMidletStateFactory.staticGet_STATE();
    }
}

