/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.configuration.persistance

public class GamePersistanceStrings : JObject {
    private static GamePersistanceStrings? instance;
    private static bool staticSet_instance = false;
    private static GamePersistanceStrings staticGet_instance() {
        if (!GamePersistanceStrings.staticSet_instance) {
            GamePersistanceStrings.staticSet_instance = true;
            GamePersistanceStrings.instance = new GamePersistanceStrings();
        }
        return GamePersistanceStrings.instance;
    }
    public string SAVED_GAME_RECORD_ID;
    public string SAVED_GAME_CONFIGURATION_RECORD_ID;
    public string DEFAULT_INPUT_MAPPING_RECORD_ID;
    public string SAVED_INPUT_CONFIGURATION_RECORD_ID;

    // Java field initializers run after the base constructor
    private void initFieldsGamePersistanceStrings() {
    this.SAVED_GAME_RECORD_ID = "_SG";
    this.SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC";
    this.DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM";
    this.SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC";
    }

    public GamePersistanceStrings() {
        base();
        this.initFieldsGamePersistanceStrings();
    }
    

    public static GamePersistanceStrings getInstance() {
        return GamePersistanceStrings.staticGet_instance();
    }
}

