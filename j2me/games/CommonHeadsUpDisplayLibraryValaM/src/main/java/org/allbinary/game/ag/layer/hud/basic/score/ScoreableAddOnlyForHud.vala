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
// package org.allbinary.game.ag.layer.hud.basic.score
// import org.allbinary.game.score.Scoreable

public class ScoreableAddOnlyForHud : Scoreable {
    private ScoreHudWidget scoreHudWidget;

    // Java field initializers run after the base constructor
    private void initFieldsScoreableAddOnlyForHud() {
    
    }
    

    public ScoreableAddOnlyForHud(ScoreHudWidget scoreVectorGraphic) {
        base(0);
        this.initFieldsScoreableAddOnlyForHud();
        this.scoreHudWidget = scoreVectorGraphic;
        this.getScoreHudWidget().@set(0);
    }
    

    public override void removePoints(int32 points) {
    }
    

    public override void addPoints(int32 points) {
        base.addPoints(points);
        this.getScoreHudWidget().add(points);
    }
    

    public virtual ScoreHudWidget getScoreHudWidget() {
        return this.scoreHudWidget;
    }
}

