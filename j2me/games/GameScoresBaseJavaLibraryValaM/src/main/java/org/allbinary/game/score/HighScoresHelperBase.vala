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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings

public class HighScoresHelperBase : JObject, HighScoresHelperBaseInterface, HighScoresResultsListener {
    public LogUtil logUtil;
    public HighScores[] highScoresArrayP;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoresHelperBase() {
    this.logUtil = LogUtil.getInstance();
    this.highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray;
    }

    public HighScoresHelperBase() {
        base();
        this.initFieldsHighScoresHelperBase();
    }
    

    public virtual void setHighScoresArray(HighScores[] highScoresArrayP) {
        if (highScoresArrayP != null) {
            CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.putF(new StringMaker().append(commonStrings.START).appendint(highScoresArrayP.length).toString(), this, "setHighScoresArray");
        } else {
            CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.putF(commonStrings.START, this, "setHighScoresArray");
        }
        this.highScoresArrayP = highScoresArrayP;
    }
    

    public virtual HighScores getNextHighScores() {
        return NullHighScoresSingletonFactory.getInstance();
    }
    

    public virtual bool isAnyHighScores() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void setSelectedHighScores(HighScores selectedHighScores) {
    }
    

    public virtual HighScores getSelectedHighScores() {
        return NullHighScoresSingletonFactory.getInstance();
    }
    

    public virtual HighScores[] getHighScoresArray() {
        return this.highScoresArrayP;
    }
    

    public virtual void selectHighScores() {
    }
}

