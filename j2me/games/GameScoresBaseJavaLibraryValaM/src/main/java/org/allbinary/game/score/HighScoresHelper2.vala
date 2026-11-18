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
// import org.allbinary.util.CircularIndexUtil

public class HighScoresHelper2 : HighScoresHelperBase {
    private CircularIndexUtil circularIndexUtil;
    private HighScores selectedHighScores;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoresHelper2() {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0);
    this.selectedHighScores = NullHighScoresSingletonFactory.getInstance();
    }

    public HighScoresHelper2() {
        base();
        this.initFieldsHighScoresHelper2();
    }
    

    public override void setSelectedHighScores(HighScores selectedHighScores) {
        this.selectedHighScores = selectedHighScores;
    }
    

    public override HighScores getSelectedHighScores() {
        return this.selectedHighScores;
    }
    

    public override void setHighScoresArray(HighScores[] highScoresArrayP) {
        base.setHighScoresArray(highScoresArrayP);
        this.circularIndexUtil.setSize(this.highScoresArrayP.length);
        this.selectHighScores();
    }
    

    public override void selectHighScores() {
        if (this.highScoresArrayP.length == 0) {
            this.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance());
            return;
        }
        this.circularIndexUtil.next();
        HighScores highScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()];
        int32 index = 0;
        while (highScores.getTotal() < 1 && index < this.highScoresArrayP.length) {
            highScores = this.highScoresArrayP[this.circularIndexUtil.next()];
            index++;
        }
        this.setSelectedHighScores(highScores);
    }
}

