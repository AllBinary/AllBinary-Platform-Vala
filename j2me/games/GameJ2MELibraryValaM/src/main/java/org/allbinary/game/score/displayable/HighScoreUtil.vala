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
// package org.allbinary.game.score.displayable
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.GameInfo
// import org.allbinary.game.score.HighScore
// import org.allbinary.game.score.HighScoreNamePersistanceSingleton
// import org.allbinary.game.score.HighScores
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresHelperBaseInterface
// import org.allbinary.game.score.HighScoresResultsListener
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonStrings

public class HighScoreUtil : JObject, HighScoresResultsListener {
    public static Command? SUBMIT_TEXTBOX_COMMAND;
    private static bool staticSet_SUBMIT_TEXTBOX_COMMAND = false;
    public static Command staticGet_SUBMIT_TEXTBOX_COMMAND() {
        if (!HighScoreUtil.staticSet_SUBMIT_TEXTBOX_COMMAND) {
            HighScoreUtil.staticSet_SUBMIT_TEXTBOX_COMMAND = true;
            HighScoreUtil.SUBMIT_TEXTBOX_COMMAND = new Command("Submit", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
        }
        return HighScoreUtil.SUBMIT_TEXTBOX_COMMAND;
    }
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private HighScoresFactoryInterface highScoresFactoryInterface;
    private HighScores[] highScoresArray;
    private HighScore highScore;
    private AbeClientInformationInterface abeClientInformation;
    private GameInfo gameInfo;
    private HighScoresHelperBaseInterface highScoresHelper;
    private bool firstTime;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoreUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    
    this.firstTime = true;
    }
    

    public HighScoreUtil(HighScoresFactoryInterface highScoresFactoryInterface, HighScoresHelperBaseInterface highScoresHelper, AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, CommandListener cmdListener, string name, HighScore highScore) {
        base();
        this.initFieldsHighScoreUtil();
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresHelper = highScoresHelper;
        this.highScoresArray = this.highScoresHelper.getHighScoresArray();
        this.highScore = highScore;
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
    }
    

    public virtual void setHighScoresArray(HighScores[] highScoresArray) {
        this.highScoresArray = highScoresArray;
        this.firstTime = false;
        this.saveHighScore();
    }
    

    public virtual void update(string name) {
        HighScoreNamePersistanceSingleton.getInstance().save(this.abeClientInformation, this.gameInfo, name);
        this.highScore.setName(name);
    }
    

    public virtual void saveHighScore() {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(StringUtil.getInstance().toString1(this.highScore)).toString(), this, "saveHighScore");
        int32 size = this.highScoresArray.length;
        if (this.firstTime && size == 0) {
            this.logUtil.putF("Games canvas did not give us any HighScores", this, "saveHighScore");
            this.highScoresFactoryInterface.fetchHighScores(this.gameInfo, this);
            return;
        }
        HighScores highScores = null;
        string highScoresAsString = null;
        for (int32 index = 0; index < size; index++) {
            highScores = this.highScoresArray[index];
            highScores.addHighScore(this.highScore);
            highScoresAsString = highScores.toString();
            this.logUtil.putF(new StringMaker().append("Added/Adding Score: ").append(highScoresAsString).toString(), this, "saveHighScore");
        }
        this.highScoresHelper.setHighScoresArray(this.highScoresArray);
    }
    

    public virtual void submit(MyCanvas myCanvas) {
        CommandListener commandListener = myCanvas.getCustomCommandListener();
        commandListener.commandAction(HighScoreUtil.staticGet_SUBMIT_TEXTBOX_COMMAND(), myCanvas);
    }
}

