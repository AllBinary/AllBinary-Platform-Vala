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
// package org.allbinary.game.input
// import org.allbinary.logic.NullUtil

public class GameKeyMappingFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!GameKeyMappingFactory.staticSet_instance) {
            GameKeyMappingFactory.staticSet_instance = true;
            GameKeyMappingFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameKeyMappingFactory.instance;
    }
    private GameKey[] intKeyToGameKey;

    // Java field initializers run after the base constructor
    private void initFieldsGameKeyMappingFactory() {
    this.intKeyToGameKey = new GameKey[InputFactory.getInstance().MAX_];
    }
    

    public static GameKeyMappingFactory getInstance() {
        if (GameKeyMappingFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyMappingFactory.instance = new GameKeyMappingFactory();
        }
        return ((GameKeyMappingFactory) GameKeyMappingFactory.staticGet_instance());
    }
    

    public GameKeyMappingFactory() {
        base();
        this.initFieldsGameKeyMappingFactory();
        GameKeyFactory gameKeyFactory = GameKeyFactory.getInstance();
        this.setGameKey(gameKeyFactory.NONE);
        this.setGameKey(gameKeyFactory.UP);
        this.setGameKey(gameKeyFactory.DOWN);
        this.setGameKey(gameKeyFactory.LEFT);
        this.setGameKey(gameKeyFactory.RIGHT);
        this.setGameKey(gameKeyFactory.KEY_POUND);
        this.setGameKey(gameKeyFactory.KEY_STAR);
        this.setGameKey(gameKeyFactory.KEY_NUM0);
        this.setGameKey(gameKeyFactory.KEY_NUM1);
        this.setGameKey(gameKeyFactory.KEY_NUM2);
        this.setGameKey(gameKeyFactory.KEY_NUM3);
        this.setGameKey(gameKeyFactory.KEY_NUM4);
        this.setGameKey(gameKeyFactory.KEY_NUM5);
        this.setGameKey(gameKeyFactory.KEY_NUM6);
        this.setGameKey(gameKeyFactory.KEY_NUM7);
        this.setGameKey(gameKeyFactory.KEY_NUM8);
        this.setGameKey(gameKeyFactory.KEY_NUM9);
        this.setGameKey(gameKeyFactory.GAME_A);
        this.setGameKey(gameKeyFactory.GAME_B);
        this.setGameKey(gameKeyFactory.GAME_C);
        this.setGameKey(gameKeyFactory.GAME_D);
        this.setGameKey(gameKeyFactory.FIRE);
        this.setGameKey(gameKeyFactory.LEVEL_DOWN);
        this.setGameKey(gameKeyFactory.LEVEL_UP);
    }
    

    public virtual GameKey getGameKey(int32 key) {
        return this.intKeyToGameKey[key];
    }
    

    private void setGameKey(GameKey gameKey) {
        this.intKeyToGameKey[gameKey.getId()] = gameKey;
    }
}

