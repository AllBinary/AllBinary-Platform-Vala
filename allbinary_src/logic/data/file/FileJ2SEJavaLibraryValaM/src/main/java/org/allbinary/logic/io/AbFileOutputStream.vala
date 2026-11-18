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
// import java.io.FileNotFoundException
// import java.io.FileOutputStream
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil

public class AbFileOutputStream : FileOutputStream {
    

    public static AbFileOutputStream createFromAbFile(AbFile file) {
        return new AbFileOutputStream(file.getPath(), false);
    }
    

    public static AbFileOutputStream createFromAbFileAppend(AbFile file, bool append) {
        return new AbFileOutputStream(file.getPath(), append);
    }
    

    public static AbFileOutputStream createFromFilePath(string name) {
        return new AbFileOutputStream(name, false);
    }
    

    public static AbFileOutputStream createFromFilePathAppend(string name, bool append) {
        return new AbFileOutputStream(name, append);
    }
    

    public AbFileOutputStream(string name, bool append) {
        base(name, append);
    }
}

