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

public class PlayerTypesFactory : JObject {
    private static PlayerTypesFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static PlayerTypesFactory staticGet_SINGLETON() {
        if (!PlayerTypesFactory.staticSet_SINGLETON) {
            PlayerTypesFactory.staticSet_SINGLETON = true;
            PlayerTypesFactory.SINGLETON = new PlayerTypesFactory();
        }
        return PlayerTypesFactory.SINGLETON;
    }
    public PlayerType PLAYER_TYPE_ONE;
    public PlayerType PLAYER_TYPE_TWO;
    public PlayerType PLAYER_TYPE_THREE;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerTypesFactory() {
    this.PLAYER_TYPE_ONE = new PlayerType("Player Type One", 0);
    this.PLAYER_TYPE_TWO = new PlayerType("Player Type Two", 1);
    this.PLAYER_TYPE_THREE = new PlayerType("Player Type Three", 2);
    }

    public PlayerTypesFactory() {
        base();
        this.initFieldsPlayerTypesFactory();
    }
    

    public static PlayerTypesFactory getInstance() {
        return PlayerTypesFactory.staticGet_SINGLETON();
    }
}

