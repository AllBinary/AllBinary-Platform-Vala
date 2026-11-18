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
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class GameKey : Input {
    public static GameKey? NULL_GAME_KEY;
    private static bool staticSet_NULL_GAME_KEY = false;
    public static GameKey staticGet_NULL_GAME_KEY() {
        if (!GameKey.staticSet_NULL_GAME_KEY) {
            GameKey.staticSet_NULL_GAME_KEY = true;
            GameKey.NULL_GAME_KEY = new GameKey(-1, StringUtil.getInstance().NULL_STRING);
        }
        return GameKey.NULL_GAME_KEY;
    }
    

    public GameKey(int32 key, string name) {
        base(key, name);
    }
    

    public override string toString() {
        return new StringMaker().append("GameKey ").append(base.toString()).toString();
    }
}

