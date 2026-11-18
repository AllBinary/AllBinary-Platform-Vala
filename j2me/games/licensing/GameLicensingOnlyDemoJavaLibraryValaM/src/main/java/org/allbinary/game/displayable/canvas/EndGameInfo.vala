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
// package org.allbinary.game.displayable.canvas
// import org.allbinary.game.GameInfo
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.string.StringUtil

public class EndGameInfo : JObject {
    public string NORMAL_GAME_OVER_WIN;
    private string TEASER_DEMO_GAME_END_LAST_LEVEL;
    private string TEASER_DEMO_GAME_END;
    private string gameOverStr;
    private string winStr;

    // Java field initializers run after the base constructor
    private void initFieldsEndGameInfo() {
    this.NORMAL_GAME_OVER_WIN = "You Won";
    this.TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo.";
    this.TEASER_DEMO_GAME_END = "Demo Game Over.";
    this.gameOverStr = StringUtil.getInstance().EMPTY_STRING;
    this.winStr = this.gameOverStr;
    }

    public EndGameInfo() {
        base();
        this.initFieldsEndGameInfo();
    }
    

    public virtual void update(GameInfo gameInfo, MyCanvas myCanvas) {
        if (gameInfo.isLastLevel()) {
            this.setWinStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL);
        } else {
            this.setWinStr(this.NORMAL_GAME_OVER_WIN);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END);
        }
    }
    

    public virtual string getGameOverStr() {
        return this.gameOverStr;
    }
    

    public virtual void setGameOverStr(string gameOverStr) {
        this.gameOverStr = gameOverStr;
    }
    

    public virtual string getWinStr() {
        return this.winStr;
    }
    

    public virtual void setWinStr(string winStr) {
        this.winStr = winStr;
    }
}

