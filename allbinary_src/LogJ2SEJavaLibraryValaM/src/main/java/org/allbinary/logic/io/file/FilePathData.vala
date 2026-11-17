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
// package org.allbinary.logic.io.file
// import java.io.File

public class FilePathData : JObject {
    private static FilePathData? instance;
    private static bool staticSet_instance = false;
    private static FilePathData staticGet_instance() {
        if (!FilePathData.staticSet_instance) {
            FilePathData.staticSet_instance = true;
            FilePathData.instance = new FilePathData();
        }
        return FilePathData.instance;
    }
    public uint16 SEPARATORCHAR;
    public string PATH_START;

    // Java field initializers run after the base constructor
    private void initFieldsFilePathData() {
    this.SEPARATORCHAR = File.separatorChar;
    this.PATH_START = File.separator;
    }
    

    public static FilePathData getInstance() {
        return FilePathData.staticGet_instance();
    }
    

    public FilePathData() {
        base();
        this.initFieldsFilePathData();
        if (File.separatorChar == ((uint16) '\\')) {
            this.PATH_START = JString.ofString(File.separator) + JString.ofString(File.separator);
        }
    }
}

