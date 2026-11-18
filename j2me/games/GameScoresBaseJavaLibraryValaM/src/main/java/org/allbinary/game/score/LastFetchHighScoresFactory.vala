/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.score
// import org.allbinary.logic.NullUtil

public class LastFetchHighScoresFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!LastFetchHighScoresFactory.staticSet_instance) {
            LastFetchHighScoresFactory.staticSet_instance = true;
            LastFetchHighScoresFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return LastFetchHighScoresFactory.instance;
    }
    public HighScores[] highScoresArray;

    // Java field initializers run after the base constructor
    private void initFieldsLastFetchHighScoresFactory() {
    this.highScoresArray = NoHighScoresFactory.getInstance().NO_HIGH_SCORES;
    }

    public LastFetchHighScoresFactory() {
        base();
        this.initFieldsLastFetchHighScoresFactory();
    }
    

    public static LastFetchHighScoresFactory getInstance() {
        if (LastFetchHighScoresFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            LastFetchHighScoresFactory.instance = new LastFetchHighScoresFactory();
        }
        return ((LastFetchHighScoresFactory) LastFetchHighScoresFactory.staticGet_instance());
    }
}

