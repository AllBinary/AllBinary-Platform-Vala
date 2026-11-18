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

public class GameMode : JObject {
    public static GameMode? NONE;
    private static bool staticSet_NONE = false;
    public static GameMode staticGet_NONE() {
        if (!GameMode.staticSet_NONE) {
            GameMode.staticSet_NONE = true;
            GameMode.NONE = new GameMode(StringUtil.getInstance().NULL_STRING);
        }
        return GameMode.NONE;
    }
    public static GameMode? SERVER;
    private static bool staticSet_SERVER = false;
    public static GameMode staticGet_SERVER() {
        if (!GameMode.staticSet_SERVER) {
            GameMode.staticSet_SERVER = true;
            GameMode.SERVER = new GameMode("Server");
        }
        return GameMode.SERVER;
    }
    public static GameMode? CLIENT;
    private static bool staticSet_CLIENT = false;
    public static GameMode staticGet_CLIENT() {
        if (!GameMode.staticSet_CLIENT) {
            GameMode.staticSet_CLIENT = true;
            GameMode.CLIENT = new GameMode("Client");
        }
        return GameMode.CLIENT;
    }
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsGameMode() {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public GameMode(string name) {
        base();
        this.initFieldsGameMode();
        this.setName(name);
    }
    

    private void setName(string name) {
        this.name = name;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public override string toString() {
        return this.getName();
    }
}

