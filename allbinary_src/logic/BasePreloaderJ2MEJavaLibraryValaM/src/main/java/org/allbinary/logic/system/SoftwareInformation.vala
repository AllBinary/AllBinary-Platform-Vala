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
// package org.allbinary.logic.system
// import org.allbinary.KotlinUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps

public class SoftwareInformation : JObject {
    private string name;
    private string shortName;
    private string version;

    // Java field initializers run after the base constructor
    private void initFieldsSoftwareInformation() {
    
    
    
    }
    

    public SoftwareInformation(string name, string version, string shortName) {
        base();
        this.initFieldsSoftwareInformation();
        this.name = name;
        this.version = version;
        this.shortName = new StringMaker().append(shortName).append(KotlinUtil.getShortName()).toString();
    }
    

    public virtual string getName() {
        return this.name;
    }
    

    public virtual string getVersion() {
        return this.version;
    }
    

    public virtual string toShortString() {
        return this.shortName;
    }
    

    public override string toString() {
        string NAME = "Name: ";
        string VERSION = "Version: ";
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(NAME);
        stringBuffer.append(this.getName());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(VERSION);
        stringBuffer.append(this.getVersion());
        return stringBuffer.toString();
    }
}

