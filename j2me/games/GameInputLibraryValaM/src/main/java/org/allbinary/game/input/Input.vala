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
// package org.allbinary.game.input
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class Input : JObject {
    private int32 id;
    private string name;

    // Java field initializers run after the base constructor
    private void initFieldsInput() {
    this.id = 0;
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public Input(int32 id, string name) {
        base();
        this.initFieldsInput();
        this.setId(id);
        this.setName(name);
    }
    

    public virtual int32 getId() {
        return this.id;
    }
    

    private void setId(int32 key) {
        this.id = key;
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    private void setName(string keyName) {
        this.name = keyName;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Id: ");
        stringBuffer.appendint(this.getId());
        return stringBuffer.toString();
    }
}

