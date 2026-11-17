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
// package org.allbinary.logic.system.os
// import org.allbinary.logic.java.character.CharacterSet
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.string.CommonSeps

public class GenericOperatingSystem : JObject, OperatingSystemInterface {
    private string osName;
    private string osArch;
    private string osVersion;
    private CharacterSet characterSet;
    public bool scalable;

    // Java field initializers run after the base constructor
    private void initFieldsGenericOperatingSystem() {
    this.osName = null;
    this.osArch = null;
    this.osVersion = null;
    this.characterSet = new CharacterSet();
    this.scalable = false;
    }
    

    public GenericOperatingSystem() {
        base();
        this.initFieldsGenericOperatingSystem();
        SystemProperties systemProperties = SystemProperties.getInstance();
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        string EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
        if (stringValidationUtil.isEmpty(systemProperties.getName())) {
            this.osName = EMPTY_STRING;
        } else {
            this.osName = systemProperties.getName();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getArch())) {
            this.osArch = EMPTY_STRING;
        } else {
            this.osArch = systemProperties.getArch();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getVersion())) {
            this.osVersion = EMPTY_STRING;
        } else {
            this.osVersion = systemProperties.getVersion();
        }
    }
    

    public virtual string getName() {
        return this.osName;
    }
    

    public virtual string getVersion() {
        return this.osVersion;
    }
    

    public virtual string getArch() {
        return this.osArch;
    }
    

    public virtual CharacterSet getCharacterSet() {
        return this.characterSet;
    }
    

    public virtual bool isOverScan() {
        return false;
    }
    

    public virtual int32 getOverScanXPercent() {
        return 100;
    }
    

    public virtual int32 getOverScanYPercent() {
        return 100;
    }
    

    public virtual bool isScalable() {
        return this.scalable;
    }
    

    public virtual bool isAutoHide() {
        return false;
    }
    

    public override string toString() {
        string NEW_LINE = CommonSeps.getInstance().NEW_LINE;
        StringMaker osBuffer = new StringMaker();
        osBuffer.append("Operating System Info: \n");
        osBuffer.append(this.getName());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getArch());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getVersion());
        osBuffer.append(NEW_LINE);
        osBuffer.append(StringUtil.getInstance().toString1(this.getCharacterSet()));
        osBuffer.append(NEW_LINE);
        return osBuffer.toString();
    }
}

