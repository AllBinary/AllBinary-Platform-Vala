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

public class GameDifficultyFactory : JObject {
    private static GameDifficultyFactory? instance;
    private static bool staticSet_instance = false;
    private static GameDifficultyFactory staticGet_instance() {
        if (!GameDifficultyFactory.staticSet_instance) {
            GameDifficultyFactory.staticSet_instance = true;
            GameDifficultyFactory.instance = new GameDifficultyFactory();
        }
        return GameDifficultyFactory.instance;
    }
    private int32 level;

    // Java field initializers run after the base constructor
    private void initFieldsGameDifficultyFactory() {
    this.level = 0;
    }

    public GameDifficultyFactory() {
        base();
        this.initFieldsGameDifficultyFactory();
    }
    

    public static GameDifficultyFactory getInstance() {
        return GameDifficultyFactory.staticGet_instance();
    }
    

    public virtual void setLevel(int32 level) {
        this.level = level;
    }
    

    public virtual int32 getLevel() {
        return this.level;
    }
}

