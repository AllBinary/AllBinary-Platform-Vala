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
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

public class AbPathData : JObject {
    private static AbPathData? instance;
    private static bool staticSet_instance = false;
    private static AbPathData staticGet_instance() {
        if (!AbPathData.staticSet_instance) {
            AbPathData.staticSet_instance = true;
            AbPathData.instance = new AbPathData();
        }
        return AbPathData.instance;
    }
    public string EXTENSION_SEP;
    public uint16 SEPARATORCHAR;
    public string SEPARATOR;

    // Java field initializers run after the base constructor
    private void initFieldsAbPathData() {
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD;
    this.SEPARATORCHAR = ((uint16) '/');
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH;
    }
    

    public static AbPathData getInstance() {
        return AbPathData.staticGet_instance();
    }
    

    public AbPathData() {
        base();
        this.initFieldsAbPathData();
    }
    

    public virtual int32 getExtensionIndex(string filePath) {
        int32 indexOfFileExtensionDelmiter = JString.lastIndexOf(filePath, this.EXTENSION_SEP);
        int32 indexOfLatDelimiter = JString.lastIndexOfChar(filePath, this.SEPARATORCHAR);
        if (indexOfFileExtensionDelmiter < 0) {
            return -1;
        }
        if (indexOfFileExtensionDelmiter < indexOfLatDelimiter) {
            return -1;
        }
        return indexOfFileExtensionDelmiter;
    }
    

    public virtual string getExtensionWithDot(string filePath) {
        int32 indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath);
        string extension = StringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = JString.substring(filePath, indexOfFileExtensionDelmiter);
        }
        return extension;
    }
    

    public virtual string getExtension(string filePath) {
        int32 indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath);
        string extension = StringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = JString.substring(filePath, indexOfFileExtensionDelmiter + 1);
        }
        return extension;
    }
    

    public virtual string getNameFromPath(string path) {
        int32 endIndex = JString.lastIndexOfChar(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOfChar(path, FilePathData.getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return path;
        }
        if (JString.length(path) == endIndex + 1) {
            string categoryName = JString.substring(path, 0, endIndex);
            return this.getNameFromPath(categoryName);
        } else {
            string categoryName = JString.substring(path, endIndex + 1);
            return categoryName;
        }
    }
    

    public virtual string removeNameFromPath(string path) {
        int32 endIndex = JString.lastIndexOfChar(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOfChar(path, FilePathData.getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return StringUtil.getInstance().EMPTY_STRING;
        }
        if (JString.length(path) == endIndex + 1) {
            return this.removeNameFromPath(JString.substring(path, 0, endIndex - 1));
        } else {
            string pathWithoutName = JString.substring(path, 0, endIndex);
            return pathWithoutName;
        }
    }
}

