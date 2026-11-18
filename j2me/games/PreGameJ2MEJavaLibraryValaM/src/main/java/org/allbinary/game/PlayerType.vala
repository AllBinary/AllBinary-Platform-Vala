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
// import org.allbinary.logic.string.StringUtil

public class PlayerType : JObject {
    private int32 id;
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsPlayerType() {
    
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public PlayerType(string name, int32 value) {
        base();
        this.initFieldsPlayerType();
        this.name = name;
        this.id = value;
    }
    

    public virtual int32 getId() {
        return this.id;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public override string toString() {
        return this.getName();
    }
}

