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
// package org.allbinary.logic.io.path
// import org.allbinary.logic.io.file.FilePathData
// import org.allbinary.logic.io.file.FilePathUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.string.StringValidationUtil
// import org.allbinary.string.CommonSeps

public class AbPath : JObject {
    private const string NETWORK_SEP = ":/";
    private CommonSeps commonSeps;
    private AbPathData abPathData;
    private PathUtil abPathUtil;
    private string EMPTY_STRING;
    public string schema;
    private string path;
    public string nameP;
    private bool hasSchemaP;
    private int32 numberOfSeps;

    // Java field initializers run after the base constructor
    private void initFieldsAbPath() {
    this.commonSeps = CommonSeps.getInstance();
    this.abPathData = AbPathData.getInstance();
    this.abPathUtil = PathUtil.getInstance();
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.schema = this.EMPTY_STRING;
    this.path = this.EMPTY_STRING;
    this.nameP = this.EMPTY_STRING;
    this.hasSchemaP = false;
    this.numberOfSeps = 0;
    }
    

    public static AbPath createAbPath() {
        {
            string EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
            return new AbPath(EMPTY_STRING, EMPTY_STRING);
        } /* catch (Exception ex): a thrown Java exception stops the program */
    }
    

    public AbPath(string aPath, string name) {
        base();
        this.initFieldsAbPath();
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isEmpty(aPath)) {
            this.schema = this.getSchema(aPath);
            this.nameP = name;
            this.path = this.abPathUtil.adjustEnd(this.abPathUtil.adjust(this.getPathFromPath(aPath)));
        } else {
            this.init();
            if (!stringValidationUtil.isEmpty(name)) {
                this.nameP = name;
            }
        }
    }
    

    private void init() {
        this.schema = this.EMPTY_STRING;
        this.setPath(this.abPathData.SEPARATOR);
        this.nameP = this.EMPTY_STRING;
    }
    

    public virtual string getSchema(string aPath) {
        int32 beginIndex = JString.indexOf(aPath, this.commonSeps.COLON);
        if (beginIndex >= 0) {
            this.hasSchemaP = true;
            return JString.substring(aPath, 0, beginIndex);
        }
        this.hasSchemaP = false;
        return this.EMPTY_STRING;
    }
    

    public virtual bool hasSchema() {
        return this.hasSchemaP;
    }
    

    public virtual string getPathFromPath(string aPath) {
        FilePathData filePathData = FilePathData.getInstance();
        string tempPath = aPath;
        if (!this.hasSchema()) {
            tempPath = this.abPathUtil.adjustStart(tempPath);
        } else {
            int32 beginIndex = JString.indexOf(tempPath, this.commonSeps.COLON);
            if (beginIndex >= 0) {
                beginIndex++;
                while (JString.charAt(tempPath, beginIndex) == this.abPathData.SEPARATORCHAR || JString.charAt(tempPath, beginIndex) == filePathData.SEPARATORCHAR) {
                    beginIndex++;
                    this.numberOfSeps++;
                    if (this.numberOfSeps > 2) {
                        JSystem.fatal(new JException("Exception", "Should Not Have More Than Two Seps"));
                    }
                }
                tempPath = JString.substring(tempPath, beginIndex, JString.length(tempPath));
            }
        }
        return tempPath;
    }
    

    public virtual void setName(string name) {
        this.nameP = name;
    }
    

    public virtual string getName() {
        return this.nameP;
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        if (this.hasSchema()) {
            stringBuffer.append(this.schema);
            stringBuffer.append(AbPath.NETWORK_SEP);
        }
        stringBuffer.append(this.getPath());
        stringBuffer.append(this.nameP);
        return stringBuffer.toString();
    }
    

    public virtual string toFileSystemString() {
        if (this.hasSchema()) {
            FilePathData filePathData = FilePathData.getInstance();
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(this.schema);
            stringBuffer.append(this.commonSeps.COLON);
            stringBuffer.append(filePathData.PATH_START);
            stringBuffer.append(FilePathUtil.adjust(this.getPath()));
            stringBuffer.append(this.nameP);
            return stringBuffer.toString();
        } else {
            return JString.ofString(FilePathUtil.adjust(this.getPath())) + JString.ofString(this.nameP);
        }
    }
    

    public virtual string getPath() {
        return this.path;
    }
    

    public virtual void setPath(string path) {
        this.path = path;
    }
}

