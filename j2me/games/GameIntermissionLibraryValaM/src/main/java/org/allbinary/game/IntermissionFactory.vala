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
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory

public class IntermissionFactory : JObject {
    private static IntermissionFactory? instance;
    private static bool staticSet_instance = false;
    private static IntermissionFactory staticGet_instance() {
        if (!IntermissionFactory.staticSet_instance) {
            IntermissionFactory.staticSet_instance = true;
            IntermissionFactory.instance = new IntermissionFactory();
        }
        return IntermissionFactory.instance;
    }
    public GameState START_LEVEL_INTERMISSION_GAME_STATE;
    public GameState WAIT_LEVEL_INTERMISSION_GAME_STATE;
    public GameState SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE;
    public GameState SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE;

    // Java field initializers run after the base constructor
    private void initFieldsIntermissionFactory() {
    this.START_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("START_LEVEL_INTERMISSION_GAME_STATE");
    this.WAIT_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("WAIT_LEVEL_INTERMISSION_GAME_STATE");
    this.SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE");
    this.SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = GameStateFactory.getInstance().createGameState("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE");
    }

    public IntermissionFactory() {
        base();
        this.initFieldsIntermissionFactory();
    }
    

    public static IntermissionFactory getInstance() {
        return IntermissionFactory.staticGet_instance();
    }
}

