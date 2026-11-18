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
// package org.allbinary.game.input.event
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.util.event.AllBinaryEventObject

public class GameKeyEvent : AllBinaryEventObject {
    public static GameKeyEvent? NONE;
    private static bool staticSet_NONE = false;
    public static GameKeyEvent staticGet_NONE() {
        if (!GameKeyEvent.staticSet_NONE) {
            GameKeyEvent.staticSet_NONE = true;
            GameKeyEvent.NONE = new GameKeyEvent(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false);
        }
        return GameKeyEvent.NONE;
    }
    private int32 sourceId;
    private bool repeated;
    private int32 key;
    private int32 gameActionKey;
    private int32 originalKey;

    // Java field initializers run after the base constructor
    private void initFieldsGameKeyEvent() {
    
    this.repeated = false;
    
    this.gameActionKey = 0;
    this.originalKey = 0;
    }
    

    public static GameKeyEvent createEvent(JObject anyType, int32 sourceId, int32 key) {
        return new GameKeyEvent(anyType, sourceId, 0, 0, key, false);
    }
    

    public GameKeyEvent(JObject anyType, int32 sourceId, int32 originalKey, int32 gameActionKey, int32 key, bool repeated) {
        base(anyType);
        this.initFieldsGameKeyEvent();
        this.sourceId = sourceId;
        this.setOriginalKey(originalKey);
        this.key = key;
        this.setGameActionKey(gameActionKey);
        this.setRepeatEvents(repeated);
    }
    

    public virtual void init(JObject anyType) {
        this.setSource(anyType);
    }
    

    private void setRepeatEvents(bool repeated) {
        this.repeated = repeated;
    }
    

    public virtual bool hasRepeatEvents() {
        return this.repeated;
    }
    

    public virtual int32 getKey() {
        return this.key;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("\nKey: ");
        stringBuffer.appendint(this.getKey());
        return stringBuffer.toString();
    }
    

    public virtual int32 getOriginalKey() {
        return this.originalKey;
    }
    

    public virtual void setOriginalKey(int32 originalKey) {
        this.originalKey = originalKey;
    }
    

    public virtual int32 getGameActionKey() {
        return this.gameActionKey;
    }
    

    public virtual void setGameActionKey(int32 gameActionKey) {
        this.gameActionKey = gameActionKey;
    }
    

    public virtual int32 getSourceId() {
        return this.sourceId;
    }
}

