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
// package org.allbinary.logic.system.security.licensing
// import java.io.InputStream
// import java.io.OutputStream
// import org.allbinary.business.init.LicenseInitInfoUtil
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.FileStreamFactory
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.io.file.FileFactory
// import org.allbinary.logic.io.file.SimpleFileUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class LicenseServerInitFileUtil : JObject {
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private OutputStream NULL_OUTPUT_STREAM;

    // Java field initializers run after the base constructor
    private void initFieldsLicenseServerInitFileUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.NULL_OUTPUT_STREAM = SimpleFileUtil.nullOutputStream();
    }

    public LicenseServerInitFileUtil() {
        base();
        this.initFieldsLicenseServerInitFileUtil();
    }
    

    public virtual void init() {
        {
            string filePath = LicenseInitInfoUtil.getInstance().INITFILENAME;
            LicenseInitInfoUtil.getInstance().setFilePath(StringUtil.getInstance().EMPTY_STRING);
            if (FileFactory.getInstance().isFile(filePath)) {
                this.logUtil.putF("Using Existing License File", this, this.commonStrings.INIT);
            } else {
                this.write();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private void write() {
        OutputStream fileOutputStream = this.NULL_OUTPUT_STREAM;
        {
            ResourceUtil resourceUtil = ResourceUtil.getInstance();
            string filePath = LicenseInitInfoUtil.getInstance().INITFILENAME;
            InputStream inputStream = resourceUtil.getResourceAsStream(filePath);
            this.logUtil.putF("Writing Default License File", this, this.commonStrings.INIT);
            FileStreamFactory fileStreamFactory = FileStreamFactory.getInstance();
            fileOutputStream = fileStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath);
            int32 b = 0;
            int32 index = 0;
            while (true) {
                b = inputStream.read();
                if (b == -1) {
                    break;
                }
                fileOutputStream.write(b);
                index++;
            }
            this.logUtil.putF(JString.ofString("Wrote Bytes: ") + (index).to_string(), this, this.commonStrings.INIT);
            fileOutputStream.flush();
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            StreamUtil.getInstance().close(fileOutputStream);
        }
    }
}

