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
// import org.allbinary.logic.communication.log.LogUtil

public class NoHighScoresFactory : HighScoresBase {
    private static NoHighScoresFactory? instance;
    private static bool staticSet_instance = false;
    private static NoHighScoresFactory staticGet_instance() {
        if (!NoHighScoresFactory.staticSet_instance) {
            NoHighScoresFactory.staticSet_instance = true;
            NoHighScoresFactory.instance = new NoHighScoresFactory();
        }
        return NoHighScoresFactory.instance;
    }
    public LogUtil logUtil;
    public HighScores[] NO_HIGH_SCORES;

    // Java field initializers run after the base constructor
    private void initFieldsNoHighScoresFactory() {
    this.logUtil = LogUtil.getInstance();
    this.NO_HIGH_SCORES = new HighScores[0];
    }
    

    public static NoHighScoresFactory getInstance() {
        return NoHighScoresFactory.staticGet_instance();
    }
    

    public NoHighScoresFactory() {
        base();
        this.initFieldsNoHighScoresFactory();
    }
    

    public override void fetchHighScores(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener) {
        this.logUtil.putF("Getting No HighScores", this, "fetchHighScores");
        highScoresResultsListener.setHighScoresArray(this.NO_HIGH_SCORES);
    }
    

    public override HighScoresHelperBaseInterface createHighScoresHelper() {
        return new HighScoresHelperBase();
    }
}

