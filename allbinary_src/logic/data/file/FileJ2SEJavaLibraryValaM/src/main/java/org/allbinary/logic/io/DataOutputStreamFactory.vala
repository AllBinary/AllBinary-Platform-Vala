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
// import org.allbinary.logic.io.file.AbFile

public class DataOutputStreamFactory : JObject {
    private static DataOutputStreamFactory? instance;
    private static bool staticSet_instance = false;
    private static DataOutputStreamFactory staticGet_instance() {
        if (!DataOutputStreamFactory.staticSet_instance) {
            DataOutputStreamFactory.staticSet_instance = true;
            DataOutputStreamFactory.instance = new DataOutputStreamFactory();
        }
        return DataOutputStreamFactory.instance;
    }

    public DataOutputStreamFactory() {
        base();
    }
    

    public static DataOutputStreamFactory getInstance() {
        return DataOutputStreamFactory.staticGet_instance();
    }
    

    public virtual AbDataOutputStream getInstanceForAbFile(AbFile file) {
        AbFileOutputStream idFileOutputStream = AbFileOutputStream.createFromAbFile(file);
        AbDataOutputStream idOutData = new AbDataOutputStream(idFileOutputStream);
        return idOutData;
    }
    

    public virtual AbDataOutputStream getInstance2(string filePath, string fileName) {
        FileStreamFactory fileStreamFactory = FileStreamFactory.getInstance();
        AbFileOutputStream fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(filePath, fileName);
        AbDataOutputStream idOutData = new AbDataOutputStream(fileOutputStream);
        return idOutData;
    }
}

