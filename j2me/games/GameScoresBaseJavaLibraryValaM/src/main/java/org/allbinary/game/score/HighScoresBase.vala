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
// import org.allbinary.game.GameInfo
// import org.allbinary.string.CommonStrings

public class HighScoresBase : JObject, HighScoresFactoryInterface {
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoresBase() {
    this.commonStrings = CommonStrings.getInstance();
    }
    

    public HighScoresBase() {
        base();
        this.initFieldsHighScoresBase();
    }
    

    public virtual void fetchHighScores(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void fetchHighScoresPreload(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener, bool preload) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual HighScoresHelperBaseInterface createHighScoresHelper() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

