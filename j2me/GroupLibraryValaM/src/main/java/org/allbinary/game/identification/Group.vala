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
// package org.allbinary.game.identification
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class Group : JObject, GroupInterface {
    private string name;
    private int16 teamId;
    private string string;

    // Java field initializers run after the base constructor
    private void initFieldsGroup() {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    
    this.string = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public Group(string teamName, int16 teamId) {
        base();
        this.initFieldsGroup();
        this.teamId = teamId;
        this.setName(teamName);
    }
    

    public virtual string getGroupName() {
        return this.name;
    }
    

    public virtual void setName(string name) {
        this.name = name;
        GroupCommonFactory groupCommonFactory = GroupCommonFactory.getInstance();
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL);
        stringBuffer.append(this.name);
        stringBuffer.append(groupCommonFactory.ID_LABEL);
        stringBuffer.appendshort(this.teamId);
        this.string = stringBuffer.toString();
    }
    

    public virtual int16 getGroupId() {
        return this.teamId;
    }
    

    public override string toString() {
        return this.string;
    }
}

