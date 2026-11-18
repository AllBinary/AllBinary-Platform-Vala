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
// import java.io.FileReader
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil

public class BufferedLineReader : JObject {
    private BufferedReader tmpIn;

    // Java field initializers run after the base constructor
    private void initFieldsBufferedLineReader() {
    
    }
    

    public BufferedLineReader(AbFile file) {
        base();
        this.initFieldsBufferedLineReader();
        this.tmpIn = new BufferedReader(new FileReader(AbFileNativeUtil.@get(file)));
    }
    

    public virtual void readUpToLines(int64 readAheadIndex) {
    }
    

    public virtual string readLine() {
        return this.tmpIn.readLine();
    }
    

    public virtual bool ready() {
        return this.tmpIn.ready();
    }
    

    public virtual int64 getSize() {
        return 0;
    }
    

    public virtual int32 getCurrent() {
        return 0;
    }
}

