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
// import java.io.InputStream
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

//J2SE - J2ME
public class ResourceUtil : JObject {
    private static JObject? classLoader;
    private static bool staticSet_classLoader = false;
    private static JObject staticGet_classLoader() {
        if (!ResourceUtil.staticSet_classLoader) {
            ResourceUtil.staticSet_classLoader = true;
            ResourceUtil.classLoader = NullUtil.getInstance().NULL_OBJECT;
        }
        return ResourceUtil.classLoader;
    }
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

    // Java field initializers run after the base constructor
    private void initFieldsResourceUtil() {
    this.logUtil = LogUtil.getInstance();
    }
    

    public static ResourceUtil getInstance() {
        return ResourceUtil.staticGet_instance();
    }
    

    public ResourceUtil() {
        base();
        this.initFieldsResourceUtil();
    }
    

    public virtual void setLoadingPaths(string path, string ext) {
        this.logUtil.putF(CommonStrings.getInstance().NOT_IMPLEMENTED, this, "setLoadingPaths");
    }
    

    public virtual void setClassLoader(ClassLoader classLoader) {
        this.logUtil.putF(new StringMaker().append("Resource Loader: ").append(JObject.className(classLoader)).toString(), this, "setClassLoader");
        ResourceUtil.classLoader = classLoader;
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
        CommonSeps commonSeps = CommonSeps.getInstance();
        int32 index = JString.indexOf(resource, commonSeps.COLON);
        string resourcePath = JString.substring(resource, index + startIndex);
        InputStream inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        ClassLoader classLoader = ((ClassLoader) ResourceUtil.staticGet_classLoader());
        inputStream = classLoader.getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
    

    public virtual void addResource(string resource, int32? value) {
    }
}

