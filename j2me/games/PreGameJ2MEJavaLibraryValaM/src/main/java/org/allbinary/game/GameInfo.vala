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
// package org.allbinary.game
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps
// import org.allbinary.logic.StdUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.util.ABHashtable

public class GameInfo : JObject {
    public static GameInfo? NONE;
    private static bool staticSet_NONE = false;
    public static GameInfo staticGet_NONE() {
        if (!GameInfo.staticSet_NONE) {
            GameInfo.staticSet_NONE = true;
            GameInfo.NONE = new GameInfo(GameTypeFactory.getInstance().NONE, GameMode.NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1);
        }
        return GameInfo.NONE;
    }
    public const string LEVEL_NAME = "LEVEL";
    public LogUtil logUtil;
    private GameInfoData gameInfoData;
    private GameType gameType;
    private GameMode gameMode;
    private PlayerType playerType;
    private int32 highestLevel;
    private int32 currentLevel;
    private string NEW_LEVEL;
    private string SET_CURRENT_LEVEL;
    private string NEXT_GAME_LEVEL;

    // Java field initializers run after the base constructor
    private void initFieldsGameInfo() {
    this.logUtil = LogUtil.getInstance();
    this.gameInfoData = GameInfoData.getInstance();
    
    
    
    this.highestLevel = 0;
    
    this.NEW_LEVEL = "New Level: ";
    this.SET_CURRENT_LEVEL = "setCurrentLevel";
    this.NEXT_GAME_LEVEL = "nextGameLevel";
    }
    

    public GameInfo(GameType gameType, GameMode gameMode, PlayerType playerType, int32 highestLevel, int32 currentLevel) {
        base();
        this.initFieldsGameInfo();
        this.gameType = gameType;
        this.gameMode = gameMode;
        this.setHighestLevel(highestLevel);
        this.currentLevel = currentLevel;
        this.playerType = playerType;
    }
    

    public virtual GameType getGameType() {
        return this.gameType;
    }
    

    public virtual GameMode getGameMode() {
        return this.gameMode;
    }
    

    public virtual PlayerType getPlayerType() {
        return this.playerType;
    }
    

    public virtual int32 getHighestLevel() {
        return this.highestLevel;
    }
    

    public virtual void setHighestLevel(int32 highestLevel) {
        this.highestLevel = highestLevel;
    }
    

    public virtual int32 getCurrentLevel() {
        return this.currentLevel;
    }
    

    public virtual void setCurrentLevel(int32 currentLevel) {
        this.currentLevel = currentLevel;
        this.logUtil.putF(new StringMaker().append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.SET_CURRENT_LEVEL);
    }
    

    public virtual void nextGameLevel() {
        if (this.getCurrentLevel() < this.getHighestLevel()) {
            this.currentLevel++;
        }
        this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().NEXT).append(CommonSeps.getInstance().SPACE).append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.NEXT_GAME_LEVEL);
    }
    

    public virtual void previousGameLevel() {
        if (this.getCurrentLevel() > 1) {
            this.currentLevel--;
        }
    }
    

    public virtual bool isLastLevel() {
        if (this.getCurrentLevel() >= this.getHighestLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual ABHashtable toHashtable() {
        ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        hashtable.put(JString.box(this.gameInfoData.GAME_TYPE), JString.box(this.getGameType().toString()));
        hashtable.put(JString.box(this.gameInfoData.GAME_MODE), JString.box(this.gameMode.toString()));
        hashtable.put(JString.box(this.gameInfoData.PLAYER_TYPE), JString.box(this.playerType.toString()));
        hashtable.put(JString.box(this.gameInfoData.HIGHEST_LEVEL), JString.box((this.getHighestLevel()).to_string()));
        hashtable.put(JString.box(this.gameInfoData.CURRENT_LEVEL), JString.box((this.currentLevel).to_string()));
        return hashtable;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        stringBuffer.append(this.gameInfoData.GAME_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.getGameType().toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.GAME_MODE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.gameMode.toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.PLAYER_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(StringUtil.getInstance().toString1(this.playerType));
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.HIGHEST_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.getHighestLevel());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.CURRENT_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.currentLevel);
        return stringBuffer.toString();
    }
}

