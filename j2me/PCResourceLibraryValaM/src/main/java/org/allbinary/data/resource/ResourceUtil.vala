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
// package org.allbinary.data.resource
// import java.io.ByteArrayInputStream
// import java.io.ByteArrayOutputStream
// import java.io.FileInputStream
// import java.io.InputStream
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.io.StreamUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

//J2SE - PC
public class ResourceUtil : JObject {
    private static ResourceUtil? instance;
    private static bool staticSet_instance = false;
    private static ResourceUtil staticGet_instance() {
        if (!ResourceUtil.staticSet_instance) {
            ResourceUtil.staticSet_instance = true;
            ResourceUtil.instance = new ResourceUtil();
        }
        return ResourceUtil.instance;
    }
    public LogUtil logUtil;
    private string path;
    private string ext;

    // Java field initializers run after the base constructor
    private void initFieldsResourceUtil() {
    this.logUtil = LogUtil.getInstance();
    this.path = StringUtil.getInstance().EMPTY_STRING;
    this.ext = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public static ResourceUtil getInstance() {
        return ResourceUtil.staticGet_instance();
    }
    

    public ResourceUtil() {
        base();
        this.initFieldsResourceUtil();
    }
    

    public virtual void setLoadingPaths(string path, string ext) {
        this.path = path;
        this.ext = ext;
    }
    

    public virtual void setClassLoader(ClassLoader classLoader) {
    }
    

    public virtual InputStream getResourceAsStream(string resource) {
        InputStream inputStream = this.getResourceAsStreamAtStart(resource, 2);
        if (inputStream == null) {
            inputStream = this.getResourceAsStreamAtStart(resource, 1);
            if (inputStream == null) {
                JSystem.fatal(new JException("Exception", new StringMaker().append("Unable to obtain: ").append(resource).toString()));
            }
        }
        return inputStream;
    }
    

    private InputStream getResourceAsStreamAtStart(string resource, int32 startIndex) {
        InputStream inputStream = new FileInputStream(new StringMaker().append(this.path).append(resource).append(this.ext).toString());
        if (inputStream != null) {
            int8[] byteArray = new int8[inputStream.available()];
            StreamUtil.getInstance().getByteArray(inputStream, new ByteArrayOutputStream(), byteArray);
            return new ByteArrayInputStream(byteArray);
        }
        return inputStream;
    }
    

    public virtual void addResource(string resource, int32? value) {
    }
}

