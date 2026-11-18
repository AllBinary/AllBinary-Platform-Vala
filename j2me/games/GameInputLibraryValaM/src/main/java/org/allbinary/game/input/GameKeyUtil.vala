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
// import javax.microedition.lcdui.Canvas

public class GameKeyUtil : JObject {
    private static GameKeyUtil? instance;
    private static bool staticSet_instance = false;
    private static GameKeyUtil staticGet_instance() {
        if (!GameKeyUtil.staticSet_instance) {
            GameKeyUtil.staticSet_instance = true;
            GameKeyUtil.instance = new GameKeyUtil();
        }
        return GameKeyUtil.instance;
    }

    public GameKeyUtil() {
        base();
    }
    

    public virtual bool isDirectionKey(int32 key) {
        if (key == Canvas.UP || key == Canvas.DOWN || key == Canvas.LEFT || key == Canvas.RIGHT) {
            return true;
        } else {
            return false;
        }
    }
    

    public static GameKeyUtil getInstance() {
        return GameKeyUtil.staticGet_instance();
    }
}

