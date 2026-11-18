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
// package org.allbinary.game.state
// import org.allbinary.logic.NullUtil

public class GameStateFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!GameStateFactory.staticSet_instance) {
            GameStateFactory.staticSet_instance = true;
            GameStateFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameStateFactory.instance;
    }
    private int32 index;
    public GameState NO_GAME_STATE;
    public GameState PLAYING_GAME_STATE;
    public GameState SHOW_END_RESULT_GAME_STATE;
    public GameState SHOW_HIGH_SCORE_GAME_STATE;

    // Java field initializers run after the base constructor
    private void initFieldsGameStateFactory() {
    this.index = 0;
    this.NO_GAME_STATE = this.createGameState("NO_GAME_STATE");
    this.PLAYING_GAME_STATE = this.createGameState("PLAYING_GAME_STATE");
    this.SHOW_END_RESULT_GAME_STATE = this.createGameState("SHOW_END_RESULT_GAME_STATE");
    this.SHOW_HIGH_SCORE_GAME_STATE = this.createGameState("SHOW_HIGH_SCORE_GAME_STATE");
    }
    

    public static GameStateFactory getInstance() {
        if (GameStateFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            GameStateFactory.instance = new GameStateFactory();
        }
        return ((GameStateFactory) GameStateFactory.staticGet_instance());
    }
    

    public GameStateFactory() {
        base();
        this.initFieldsGameStateFactory();
    }
    

    public virtual GameState createGameState(string name) {
        return new GameState(name, this.index++);
    }
}

