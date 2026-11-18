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

public class GameInfoData : JObject {
    private static GameInfoData? instance;
    private static bool staticSet_instance = false;
    private static GameInfoData staticGet_instance() {
        if (!GameInfoData.staticSet_instance) {
            GameInfoData.staticSet_instance = true;
            GameInfoData.instance = new GameInfoData();
        }
        return GameInfoData.instance;
    }
    public string GAME_TYPE;
    public string GAME_MODE;
    public string PLAYER_TYPE;
    public string HIGHEST_LEVEL;
    public string CURRENT_LEVEL;
    public string SOFTWARE_INFORMATION;

    // Java field initializers run after the base constructor
    private void initFieldsGameInfoData() {
    this.GAME_TYPE = "GAME_TYPE";
    this.GAME_MODE = "GAME_MODE";
    this.PLAYER_TYPE = "PLAYER_TYPE";
    this.HIGHEST_LEVEL = "HIGHEST_LEVEL";
    this.CURRENT_LEVEL = "CURRENT_LEVEL";
    this.SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION";
    }
    

    public static GameInfoData getInstance() {
        return GameInfoData.staticGet_instance();
    }
    

    public GameInfoData() {
        base();
        this.initFieldsGameInfoData();
    }
}

