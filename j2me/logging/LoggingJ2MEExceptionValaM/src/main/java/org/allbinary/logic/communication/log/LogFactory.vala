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
// package org.allbinary.logic.communication.log
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil

//ActualPlatform
public class LogFactory : JObject {
    public static Log? LOG;
    private static bool staticSet_LOG = false;
    public static Log staticGet_LOG() {
        if (!LogFactory.staticSet_LOG) {
            LogFactory.staticSet_LOG = true;
            LogFactory.LOG = new Log(StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, NullUtil.getInstance().NULL_OBJECT);
        }
        return LogFactory.LOG;
    }

    public LogFactory() {
        base();
    }
    

    public static Log getInstanceD() {
        StringUtil stringUtil = StringUtil.getInstance();
        NullUtil nullUtil = NullUtil.getInstance();
        return new Log(stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT, stringUtil.EMPTY_STRING, nullUtil.NULL_OBJECT);
    }
    

    public static Log getInstance4(string specialMessage, JObject anyType, string functionName, JObject exception) {
        return new Log(specialMessage, anyType, functionName, exception);
    }
    

    public static Log getInstanceF(string specialMessage, JObject anyType, string functionName) {
        return LogFactory.staticGet_LOG();
    }
}

