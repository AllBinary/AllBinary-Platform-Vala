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
// import org.allbinary.logic.string.StringUtil

public class GameTypeFactory : JObject {
    private static GameTypeFactory? instance;
    private static bool staticSet_instance = false;
    private static GameTypeFactory staticGet_instance() {
        if (!GameTypeFactory.staticSet_instance) {
            GameTypeFactory.staticSet_instance = true;
            GameTypeFactory.instance = new GameTypeFactory();
        }
        return GameTypeFactory.instance;
    }
    public GameType[] NULL_GAME_TYPE_ARRAY;
    public GameType NONE;
    public GameType SINGLE_PLAYER;
    public GameType MULTI_PLAYER;
    public GameType BOT;

    // Java field initializers run after the base constructor
    private void initFieldsGameTypeFactory() {
    this.NULL_GAME_TYPE_ARRAY = new GameType[0];
    this.NONE = new GameType(StringUtil.getInstance().NULL_STRING);
    this.SINGLE_PLAYER = new GameType("Single Player");
    this.MULTI_PLAYER = new GameType("Multi Player");
    this.BOT = new GameType("Artificial Player");
    }

    public GameTypeFactory() {
        base();
        this.initFieldsGameTypeFactory();
    }
    

    public static GameTypeFactory getInstance() {
        return GameTypeFactory.staticGet_instance();
    }
}

