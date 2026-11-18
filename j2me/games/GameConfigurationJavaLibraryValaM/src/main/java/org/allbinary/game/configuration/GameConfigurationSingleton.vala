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
// package org.allbinary.game.configuration
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class GameConfigurationSingleton : JObject {
    private static GameConfigurationSingleton? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static GameConfigurationSingleton staticGet_SINGLETON() {
        if (!GameConfigurationSingleton.staticSet_SINGLETON) {
            GameConfigurationSingleton.staticSet_SINGLETON = true;
            GameConfigurationSingleton.SINGLETON = new GameConfigurationSingleton();
        }
        return GameConfigurationSingleton.SINGLETON;
    }
    private BasicArrayList list;
    private ABHashtable hashtable;

    // Java field initializers run after the base constructor
    private void initFieldsGameConfigurationSingleton() {
    
    
    }
    

    public static GameConfigurationSingleton getInstance() {
        return GameConfigurationSingleton.staticGet_SINGLETON();
    }
    

    public GameConfigurationSingleton() {
        base();
        this.initFieldsGameConfigurationSingleton();
        this.list = new BasicArrayListD();
        this.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    public virtual GameConfiguration getInstanceByName(string name) {
        return ((GameConfiguration) this.hashtable.@get(name));
    }
    

    public virtual BasicArrayList getOptionsBasicArrayList() {
        return this.list;
    }
    

    public virtual void add(GameConfiguration gameConfiguration) {
        this.list.add(gameConfiguration);
    }
    

    public virtual ABHashtable getHashtable() {
        return this.hashtable;
    }
}

