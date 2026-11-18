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
// import java.io.BufferedWriter
// import java.io.FileWriter
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.file.AbFile
// import org.allbinary.logic.io.file.AbFileNativeUtil
// import org.allbinary.logic.io.path.AbPathData
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

public class BufferedWriterUtil : JObject {
    private static BufferedWriterUtil? instance;
    private static bool staticSet_instance = false;
    private static BufferedWriterUtil staticGet_instance() {
        if (!BufferedWriterUtil.staticSet_instance) {
            BufferedWriterUtil.staticSet_instance = true;
            BufferedWriterUtil.instance = new BufferedWriterUtil();
        }
        return BufferedWriterUtil.instance;
    }
    private LogUtil logUtil;
    private CommonStrings commonStrings;
    private CommonLabels commonLabels;
    private string REMOVING_OLD;

    // Java field initializers run after the base constructor
    private void initFieldsBufferedWriterUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.REMOVING_OLD = "Remove old for overwriting: ";
    }

    public BufferedWriterUtil() {
        base();
        this.initFieldsBufferedWriterUtil();
    }
    

    public static BufferedWriterUtil getInstance() {
        return BufferedWriterUtil.staticGet_instance();
    }
    

    public virtual void overwrite_2_StringString(string path, string data) {
        AbFile abFile = AbFile.createAbFile(path);
        if (abFile.exists()) {
            this.logUtil.putF(JString.ofString(this.REMOVING_OLD) + JString.ofString(path), this, this.commonStrings.CREATE);
            abFile.@delete();
        } else {
            string name = AbPathData.getInstance().removeNameFromPath(path);
            AbFile abFileDirectory = AbFile.createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                StringMaker stringBuilder = new StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                bool result = abFileDirectory.mkdirs();
                stringBuilder.@delete(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    public virtual void overwrite_2_AbFileString(AbFile abFile, string data) {
        if (abFile.exists()) {
            this.logUtil.putF(JString.ofString(this.REMOVING_OLD) + JString.ofString(abFile.getPath()), this, this.commonStrings.CREATE);
            abFile.@delete();
        } else {
            string name = AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath());
            AbFile abFileDirectory = AbFile.createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                StringMaker stringBuilder = new StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                bool result = abFileDirectory.mkdirs();
                stringBuilder.@delete(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    public virtual void write(AbFile abFile, string data) {
        BufferedWriter fileOut = new BufferedWriter(new FileWriter(AbFileNativeUtil.@get(abFile)));
        fileOut.write(data, 0, JString.length(data));
        fileOut.newLine();
        fileOut.flush();
    }
}

