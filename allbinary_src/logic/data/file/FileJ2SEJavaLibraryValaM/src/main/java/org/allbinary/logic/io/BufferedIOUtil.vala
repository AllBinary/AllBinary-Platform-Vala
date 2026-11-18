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
// import java.io.BufferedReader
// import java.io.BufferedWriter
// import java.io.FileReader
// import java.io.FileWriter
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil
// import org.allbinary.logic.string.StringUtil

public class BufferedIOUtil : JObject {

    public BufferedIOUtil() {
        base();
    }
    

    public static void copy(AbFile backupFile, AbFile backupFileBak) {
        string line = StringUtil.getInstance().EMPTY_STRING;
        BufferedWriter tmpOut = new BufferedWriter(new FileWriter(AbFileNativeUtil.@get(backupFileBak)));
        BufferedReader tmpIn = new BufferedReader(new FileReader(AbFileNativeUtil.@get(backupFile)));
        while (tmpIn.ready()) {
            line = tmpIn.readLine();
            tmpOut.write(line, 0, JString.length(line));
            tmpOut.newLine();
        }
        tmpOut.flush();
    }
}

