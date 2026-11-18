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
// package org.allbinary.logic.io
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.path.AbPath

public class FileStreamFactory : JObject {
    private static JObject? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static JObject staticGet_SINGLETON() {
        if (!FileStreamFactory.staticSet_SINGLETON) {
            FileStreamFactory.staticSet_SINGLETON = true;
            FileStreamFactory.SINGLETON = NullUtil.getInstance().NULL_OBJECT;
        }
        return FileStreamFactory.SINGLETON;
    }
    

    public static FileStreamFactory getInstance() {
        if (FileStreamFactory.staticGet_SINGLETON() == NullUtil.getInstance().NULL_OBJECT) {
            FileStreamFactory.SINGLETON = new FileStreamFactory();
        }
        return ((FileStreamFactory) FileStreamFactory.staticGet_SINGLETON());
    }
    

    public FileStreamFactory() {
        base();
    }
    

    public virtual AbFileInputStream getFileInputStreamInstance(string path, string fileName) {
        AbPath FILEABPATH = new AbPath(path, fileName);
        AbFile file = AbFile.createAbFileFromAbPath(FILEABPATH);
        return AbFileInputStream.createFromAbFile(file);
    }
    

    public virtual AbFileOutputStream getFileOutputStreamInstance(string path, string fileName) {
        AbPath FILEABPATH = new AbPath(path, fileName);
        AbFile file = AbFile.createAbFileFromAbPath(FILEABPATH);
        if (file.exists()) {
            file.@delete();
            file.createNewFile();
        }
        return AbFileOutputStream.createFromAbFile(file);
    }
    

    public virtual void @delete(string path, string fileName) {
        AbPath FILEABPATH = new AbPath(path, fileName);
        AbFile file = AbFile.createAbFileFromAbPath(FILEABPATH);
        file.@delete();
    }
}

