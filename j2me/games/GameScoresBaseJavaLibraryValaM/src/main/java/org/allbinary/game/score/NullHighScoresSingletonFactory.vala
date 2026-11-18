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
// package org.allbinary.game.score
// import org.allbinary.string.CommonStrings

public class NullHighScoresSingletonFactory : JObject {
    private static HighScores? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static HighScores staticGet_SINGLETON() {
        if (!NullHighScoresSingletonFactory.staticSet_SINGLETON) {
            NullHighScoresSingletonFactory.staticSet_SINGLETON = true;
            NullHighScoresSingletonFactory.SINGLETON = new HighScores(CommonStrings.getInstance().LOADING, "High Scores Not Loaded", CommonStrings.getInstance().PERIODS);
        }
        return NullHighScoresSingletonFactory.SINGLETON;
    }

    public NullHighScoresSingletonFactory() {
        base();
    }
    

    public static HighScores getInstance() {
        return NullHighScoresSingletonFactory.staticGet_SINGLETON();
    }
}

