/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// import java.io.InputStream
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

//J2MEForJ2ME
public class AbFileSystem : JObject {
    private static AbFileSystem? instance;
    private static bool staticSet_instance = false;
    private static AbFileSystem staticGet_instance() {
        if (!AbFileSystem.staticSet_instance) {
            AbFileSystem.staticSet_instance = true;
            AbFileSystem.instance = new AbFileSystem();
        }
        return AbFileSystem.instance;
    }
    private LogUtil logUtil;
    private CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsAbFileSystem() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    }

    public AbFileSystem() {
        base();
        this.initFieldsAbFileSystem();
    }
    

    public static AbFileSystem getInstance() {
        return AbFileSystem.staticGet_instance();
    }
    

    public virtual bool isDirectoryOrFile(string path) {
        return false;
    }
    

    public virtual bool isDirectory(string path) {
        return false;
    }
    

    public virtual string[] getFilesAsStringArrayForPath(string currentDirPath) {
        return StringUtil.getInstance().getArrayInstance();
    }
    

    public virtual string readAsString_1(string fileName) {
        int8[] bytes = new int8[1000000];
        return this.readAsString_2(fileName, bytes);
    }
    

    public virtual string readAsString_2(string fileName, int8[] bytes) {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual bool close(JObject closeable) {
        {
            if (closeable != null) {
                InputStream inputStream = (((InputStream) closeable));
                inputStream.close();
            }
            return true;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

