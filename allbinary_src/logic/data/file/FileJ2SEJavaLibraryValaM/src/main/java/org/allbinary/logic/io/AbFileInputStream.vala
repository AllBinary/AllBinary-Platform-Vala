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
// import java.io.File
// import java.io.FileInputStream
// import java.io.FileNotFoundException
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil

public class AbFileInputStream : FileInputStream {
    

    public AbFileInputStream(string name) {
        base(name);
    }
    

    public static AbFileInputStream createFromAbFile(AbFile file) {
        return new AbFileInputStream(AbFileNativeUtil.@get(file).getPath());
    }
    

    public static AbFileInputStream createFromFile(File file) {
        return new AbFileInputStream(file.getPath());
    }
}

