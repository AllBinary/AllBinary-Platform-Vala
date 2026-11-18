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

public class FileFactory : JObject {
    private static FileFactory? instance;
    private static bool staticSet_instance = false;
    private static FileFactory staticGet_instance() {
        if (!FileFactory.staticSet_instance) {
            FileFactory.staticSet_instance = true;
            FileFactory.instance = new FileFactory();
        }
        return FileFactory.instance;
    }

    public FileFactory() {
        base();
    }
    

    public static FileFactory getInstance() {
        return FileFactory.staticGet_instance();
    }
    

    public virtual AbFile getInstance1(string filePath) {
        return AbFile.createAbFileFromRawPath(filePath);
    }
    

    public virtual AbFile getInstance2(AbFile file, string childFilePath) {
        return AbFile.createAbFileWithChild(file, childFilePath);
    }
    

    public virtual bool isFile(string path) {
        AbFile file = AbFile.createAbFile(path);
        if (file.exists()) {
            return true;
        } else {
            return false;
        }
    }
}

