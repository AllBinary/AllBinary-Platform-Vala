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
// package org.allbinary.game.configuration.persistance

public class GameConfigurationPersistanceSingleton : KeyValuePersistance {
    private static GameConfigurationPersistanceSingleton? GAME_PERSISTANCE;
    private static bool staticSet_GAME_PERSISTANCE = false;
    private static GameConfigurationPersistanceSingleton staticGet_GAME_PERSISTANCE() {
        if (!GameConfigurationPersistanceSingleton.staticSet_GAME_PERSISTANCE) {
            GameConfigurationPersistanceSingleton.staticSet_GAME_PERSISTANCE = true;
            GameConfigurationPersistanceSingleton.GAME_PERSISTANCE = new GameConfigurationPersistanceSingleton();
        }
        return GameConfigurationPersistanceSingleton.GAME_PERSISTANCE;
    }
    

    public static GameConfigurationPersistanceSingleton getInstance() {
        return GameConfigurationPersistanceSingleton.staticGet_GAME_PERSISTANCE();
    }
    

    public GameConfigurationPersistanceSingleton() {
        base(GamePersistanceStrings.getInstance().SAVED_GAME_CONFIGURATION_RECORD_ID);
    }
}

