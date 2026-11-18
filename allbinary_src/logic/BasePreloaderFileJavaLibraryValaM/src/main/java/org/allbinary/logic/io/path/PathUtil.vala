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
// import org.allbinary.logic.string.StringValidationUtil

//Used to correct user input for paths
public class PathUtil : JObject {
    private static PathUtil? instance;
    private static bool staticSet_instance = false;
    private static PathUtil staticGet_instance() {
        if (!PathUtil.staticSet_instance) {
            PathUtil.staticSet_instance = true;
            PathUtil.instance = new PathUtil();
        }
        return PathUtil.instance;
    }
    private AbPathData abPathData;
    private FilePathData filePathData;

    // Java field initializers run after the base constructor
    private void initFieldsPathUtil() {
    this.abPathData = AbPathData.getInstance();
    this.filePathData = FilePathData.getInstance();
    }
    

    public static PathUtil getInstance() {
        return PathUtil.staticGet_instance();
    }
    

    public PathUtil() {
        base();
        this.initFieldsPathUtil();
    }
    

    public virtual string getExtensionWithAbFilePath(AbFilePath abFilePath) {
        return this.abPathData.getExtension(abFilePath.toString());
    }
    

    public virtual string getExtensionWithAbPath(AbPath abPath) {
        return this.abPathData.getExtension(abPath.toString());
    }
    

    public virtual string getWithoutExtensionWithAbFilePath(AbFilePath abFilePath) {
        return this.getWithoutExtension(abFilePath.toString());
    }
    

    public virtual string getWithoutExtensionWithAbPath(AbPath abPath) {
        return this.getWithoutExtension(abPath.toString());
    }
    

    public virtual string getWithoutExtension(string filePath) {
        int32 indexOfFileExtensionDelmiter = this.abPathData.getExtensionIndex(filePath);
        string pathWithoutExtension = filePath;
        if (indexOfFileExtensionDelmiter >= 0) {
            pathWithoutExtension = JString.substring(filePath, 0, indexOfFileExtensionDelmiter);
        }
        return pathWithoutExtension;
    }
    

    public virtual bool isValid(string path) {
        if (this.isValidStart(path)) {
            if (this.isValidEnd(path)) {
                return true;
            }
        }
        return false;
    }
    

    private bool isValidStart(string path) {
        if (JString.charAt(path, 0) == this.abPathData.SEPARATORCHAR || JString.charAt(path, 0) == ((uint16) '.')) {
            return true;
        } else {
            return false;
        }
    }
    

    private bool isValidEnd(string path) {
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return false;
        }
        if (JString.charAt(path, JString.length(path) - 1) == this.abPathData.SEPARATORCHAR) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual string adjustStart(string path_parameter) {
        string path = path_parameter;
        if (!this.isValidStart(path)) {
            path = JString.ofString(this.abPathData.SEPARATOR) + JString.ofString(path);
        }
        return path;
    }
    

    public virtual string adjustEnd(string path_parameter) {
        string path = path_parameter;
        if (!this.isValidEnd(path)) {
            path = JString.ofString(path) + JString.ofString(this.abPathData.SEPARATOR);
        }
        return path;
    }
    

    public virtual string adjust(string path_parameter) {
        string path = path_parameter;
        StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return this.abPathData.SEPARATOR;
        }
        if (JString.indexOf(path, "\\") >= 0) {
            path = JString.replace(path, ((uint16) '\\'), this.abPathData.SEPARATORCHAR);
        }
        return path;
    }
    

    public virtual AbPath removeNameFromPath(string path) {
        int32 endIndex = JString.lastIndexOf(path, this.abPathData.SEPARATOR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOfChar(path, this.filePathData.SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return AbPath.createAbPath();
        }
        if (JString.length(path) == endIndex + 1) {
            return this.removeNameFromPath(JString.substring(path, 0, endIndex - 1));
        } else {
            string pathWithoutName = JString.substring(path, 0, endIndex);
            return new AbPath(pathWithoutName, StringUtil.getInstance().EMPTY_STRING);
        }
    }
}

