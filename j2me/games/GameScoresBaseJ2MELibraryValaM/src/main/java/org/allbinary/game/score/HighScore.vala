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
// import java.io.ByteArrayOutputStream
// import java.io.DataOutputStream
// import org.allbinary.game.GameInfo
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

public class HighScore : JObject {
    private int32 id;
    private string name;
    private GameInfo gameInfo;
    private int64 score;
    private string scoreString;

    // Java field initializers run after the base constructor
    private void initFieldsHighScore() {
    
    
    
    
    
    }
    

    public HighScore(int32 id, string name, GameInfo gameInfo, int64 score) {
        base();
        this.initFieldsHighScore();
        this.id = id;
        this.name = name;
        this.gameInfo = gameInfo;
        this.score = score;
        this.scoreString = (this.score).to_string();
    }
    

    public virtual int32 getId() {
        return this.id;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual int64 getScore() {
        return this.score;
    }
    

    public virtual int8[] getAsBytes() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream outputStream = new DataOutputStream(byteArrayOutputStream);
        outputStream.writeUTF(this.getName());
        outputStream.writeLong(this.getScore());
        return byteArrayOutputStream.toByteArray();
    }
    

    public virtual GameInfo getGameInfo() {
        return this.gameInfo;
    }
    

    public virtual string getScoreString() {
        return this.scoreString;
    }
    

    public virtual void setName(string name) {
        this.name = name;
    }
    

    public override string toString() {
        CommonSeps commonSeps = CommonSeps.getInstance();
        return new StringMaker().append(this.name).append(commonSeps.COLON).appendlong(this.score).append(commonSeps.FORWARD_SLASH).append(this.scoreString).toString();
    }
}

