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

public class BasicHighScoresGameInfoFactory : JObject {
    private static BasicHighScoresGameInfoFactory? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static BasicHighScoresGameInfoFactory staticGet_SINGLETON() {
        if (!BasicHighScoresGameInfoFactory.staticSet_SINGLETON) {
            BasicHighScoresGameInfoFactory.staticSet_SINGLETON = true;
            BasicHighScoresGameInfoFactory.SINGLETON = new BasicHighScoresGameInfoFactory();
        }
        return BasicHighScoresGameInfoFactory.SINGLETON;
    }
    public GameInfo MULTI_PLAYER_SERVER;
    public GameInfo SINGLE_PLAYER_SERVER;

    // Java field initializers run after the base constructor
    private void initFieldsBasicHighScoresGameInfoFactory() {
    this.MULTI_PLAYER_SERVER = new GameInfo(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
    this.SINGLE_PLAYER_SERVER = new GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
    }

    public BasicHighScoresGameInfoFactory() {
        base();
        this.initFieldsBasicHighScoresGameInfoFactory();
    }
    

    public static BasicHighScoresGameInfoFactory getInstance() {
        return BasicHighScoresGameInfoFactory.staticGet_SINGLETON();
    }
}

