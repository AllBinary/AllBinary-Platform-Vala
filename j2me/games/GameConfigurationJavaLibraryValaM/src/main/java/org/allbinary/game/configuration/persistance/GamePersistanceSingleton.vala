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

public class GamePersistanceSingleton : KeyValuePersistance {
    private static GamePersistanceSingleton? GAME_PERSISTANCE;
    private static bool staticSet_GAME_PERSISTANCE = false;
    private static GamePersistanceSingleton staticGet_GAME_PERSISTANCE() {
        if (!GamePersistanceSingleton.staticSet_GAME_PERSISTANCE) {
            GamePersistanceSingleton.staticSet_GAME_PERSISTANCE = true;
            GamePersistanceSingleton.GAME_PERSISTANCE = new GamePersistanceSingleton();
        }
        return GamePersistanceSingleton.GAME_PERSISTANCE;
    }
    

    public static GamePersistanceSingleton getInstance() {
        return GamePersistanceSingleton.staticGet_GAME_PERSISTANCE();
    }
    

    public GamePersistanceSingleton() {
        base(GamePersistanceStrings.getInstance().SAVED_GAME_RECORD_ID);
    }
}

