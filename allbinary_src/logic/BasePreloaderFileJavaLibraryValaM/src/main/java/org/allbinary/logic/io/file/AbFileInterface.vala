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
// import java.io.FilenameFilter
// import java.io.IOException
// import java.net.URI

public interface AbFileInterface : JObject {
    

    public abstract bool canRead();
    

    public abstract bool canWrite();
    

    public abstract bool createNewFile();
    

    public abstract bool @delete();
    

    public abstract void deleteOnExit();
    

    public abstract bool exists();
    

    public abstract string getAbsolutePath();
    

    public abstract string getCanonicalPath();
    

    public abstract string getParent();
    

    public abstract string getPath();
    

    public abstract bool isAbsolute();
    

    public abstract bool isDirectory();
    

    public abstract bool isFile();
    

    public abstract bool isHidden();
    

    public abstract int64 lastModified();
    

    public abstract int64 length();
    

    public abstract string[] list();
    

    public abstract string[] listWithFilter(FilenameFilter filter);
    

    public abstract bool mkdir();
    

    public abstract bool mkdirs();
    

    public abstract bool setLastModified(int64 time);
    

    public abstract bool setReadOnly();
    

    public abstract string toString();
    

    public abstract URI toURI();
}

