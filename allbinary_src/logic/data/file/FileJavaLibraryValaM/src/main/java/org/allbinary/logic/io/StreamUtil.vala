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
// import java.io.ByteArrayOutputStream
// import java.io.Closeable
// import java.io.InputStream
// import java.io.OutputStream
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class StreamUtil : JObject {
    private static StreamUtil? instance;
    private static bool staticSet_instance = false;
    private static StreamUtil staticGet_instance() {
        if (!StreamUtil.staticSet_instance) {
            StreamUtil.staticSet_instance = true;
            StreamUtil.instance = new StreamUtil();
        }
        return StreamUtil.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsStreamUtil() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public static StreamUtil getInstance() {
        return StreamUtil.staticGet_instance();
    }
    

    public StreamUtil() {
        base();
        this.initFieldsStreamUtil();
    }
    

    public virtual OutputStream @get(InputStream inputStream, OutputStream outputStream, int8[] buffer) {
        int32 len = 0;
        while (true) {
            len = inputStream.readBytes(buffer, 0, buffer.length);
            if (len != -1) {
            } else {
                break;
            }
            outputStream.writeBytes(buffer, 0, len);
        }
        return outputStream;
    }
    

    public virtual int8[] getByteArray(InputStream inputStream, ByteArrayOutputStream outputStream2, int8[] byteArray) {
        ByteArrayOutputStream outputStream = outputStream2;
        {
            this.@get(inputStream, outputStream, byteArray);
            return outputStream.toByteArray();
        } /* catch (Exception e): a thrown Java exception stops the program */
        {
            this.close(outputStream);
        }
    }
    

    public virtual bool close(Closeable closeable) {
        {
            if (closeable != null) {
                closeable.close();
            }
            return true;
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

