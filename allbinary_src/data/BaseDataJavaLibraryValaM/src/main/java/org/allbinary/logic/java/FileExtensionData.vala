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
// package org.allbinary.logic.java

public class FileExtensionData : JObject {
    private static FileExtensionData? instance;
    private static bool staticSet_instance = false;
    private static FileExtensionData staticGet_instance() {
        if (!FileExtensionData.staticSet_instance) {
            FileExtensionData.staticSet_instance = true;
            FileExtensionData.instance = new FileExtensionData();
        }
        return FileExtensionData.instance;
    }
    public string DOT_JAVA_SOURCE;
    public string JAVA_SOURCE;

    // Java field initializers run after the base constructor
    private void initFieldsFileExtensionData() {
    this.DOT_JAVA_SOURCE = ".java";
    this.JAVA_SOURCE = "java";
    }
    

    public static FileExtensionData getInstance() {
        return FileExtensionData.staticGet_instance();
    }
    

    public FileExtensionData() {
        base();
        this.initFieldsFileExtensionData();
    }
}

