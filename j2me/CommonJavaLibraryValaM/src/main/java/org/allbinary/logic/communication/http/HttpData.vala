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
// package org.allbinary.logic.communication.http
// import org.allbinary.string.CommonSeps

public class HttpData : JObject {
    private static HttpData? instance;
    private static bool staticSet_instance = false;
    private static HttpData staticGet_instance() {
        if (!HttpData.staticSet_instance) {
            HttpData.staticSet_instance = true;
            HttpData.instance = new HttpData();
        }
        return HttpData.instance;
    }
    public string EQUALS;
    public string PARAM_SEP;
    public string URL_PARAM_SEP;
    public string URL_LABEL;

    // Java field initializers run after the base constructor
    private void initFieldsHttpData() {
    
    
    
    this.URL_LABEL = "Url: ";
    }
    

    public static HttpData getInstance() {
        return HttpData.staticGet_instance();
    }
    

    public HttpData() {
        base();
        this.initFieldsHttpData();
        CommonSeps commonSeps = CommonSeps.getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.PARAM_SEP = commonSeps.AMPERSAND;
        this.URL_PARAM_SEP = commonSeps.QUESTION;
    }
}

