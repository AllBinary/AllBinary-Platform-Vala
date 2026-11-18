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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings

//J2ME
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
    

    public virtual InputStream getResourceAsStream(string resource) {
        InputStream inputStream = JObject.className(resource).getResourceAsStream(resource);
        if (inputStream == null) {
            inputStream = this.getResourceAsStreamAtStart(resource, 2);
            if (inputStream == null) {
                inputStream = this.getResourceAsStreamAtStart(resource, 1);
                if (inputStream == null) {
                    StringMaker stringMaker = new StringMaker();
                    int32 index = JString.lastIndexOfChar(resource, ((uint16) '/'));
                    string resourcePath = JString.substring(resource, index + 1);
                    inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                    if (inputStream == null) {
                        resourcePath = JString.substring(resource, index);
                        inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                        if (inputStream == null) {
                            string RES = "res";
                            resourcePath = stringMaker.append(RES).append(JString.substring(resource, index)).toString();
                            inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                            if (inputStream == null) {
                                stringMaker.@delete(0, stringMaker.length());
                                resourcePath = stringMaker.append("/").append(RES).append(JString.substring(resource, index)).toString();
                                inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                                string COLON = CommonSeps.getInstance().COLON;
                                if (inputStream == null) {
                                    stringMaker.@delete(0, stringMaker.length());
                                    resourcePath = stringMaker.append(RES).append(COLON).append(JString.substring(resource, index)).toString();
                                    inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                                    if (inputStream == null) {
                                        stringMaker.@delete(0, stringMaker.length());
                                        resourcePath = stringMaker.append(RES).append(COLON).append(JString.substring(resource, index + 1)).toString();
                                        inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                                        if (inputStream == null) {
                                            string RESOURCE_STRING = "resource";
                                            stringMaker.@delete(0, stringMaker.length());
                                            resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(JString.substring(resource, index)).toString();
                                            inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                                            if (inputStream == null) {
                                                stringMaker.@delete(0, stringMaker.length());
                                                resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(JString.substring(resource, index + 1)).toString();
                                                inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
                                                if (inputStream == null) {
                                                    stringMaker.@delete(0, stringMaker.length());
                                                    JSystem.fatal(new JException("Exception", stringMaker.append("Unable to obtain: ").append(resource).toString()));
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream;
    }
    

    private InputStream getResourceAsStreamAtStart(string resource, int32 startIndex) {
        new StringMaker();
        int32 index = JString.indexOf(resource, CommonSeps.getInstance().COLON);
        string resourcePath = JString.substring(resource, index + startIndex);
        InputStream inputStream = JObject.className(resource).getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
    

    public virtual void addResource(string resource, int32? value) {
    }
}

