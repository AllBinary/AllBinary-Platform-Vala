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
// package org.allbinary.game

public class GameStrings : JObject {
    private static GameStrings? instance;
    private static bool staticSet_instance = false;
    private static GameStrings staticGet_instance() {
        if (!GameStrings.staticSet_instance) {
            GameStrings.staticSet_instance = true;
            GameStrings.instance = new GameStrings();
        }
        return GameStrings.instance;
    }
    public string PROCESS_TICK;
    public string ON_GAME_INITIALIZED;
    public string UPDATESURFACE;
    public string ON_SET_DISPLAYABLE;
    public string UNPAUSE;
    public string TOGGLE_MENU;
    public string SET_GAME_OVER;
    public string GAME_STATE;
    public string SET_GAME_STATE;
    public string STOP_GAME_CANVAS_RUNNABLE_INTERFACE;

    // Java field initializers run after the base constructor
    private void initFieldsGameStrings() {
    this.PROCESS_TICK = "processTick";
    this.ON_GAME_INITIALIZED = "onGameInitialized";
    this.UPDATESURFACE = "updateSurface";
    this.ON_SET_DISPLAYABLE = "onSetDisplayable";
    this.UNPAUSE = "unPause";
    this.TOGGLE_MENU = "toggleMenu";
    this.SET_GAME_OVER = "setGameOver";
    this.GAME_STATE = "Game State: ";
    this.SET_GAME_STATE = "setGameState";
    this.STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface";
    }

    public GameStrings() {
        base();
        this.initFieldsGameStrings();
    }
    

    public static GameStrings getInstance() {
        return GameStrings.staticGet_instance();
    }
}

