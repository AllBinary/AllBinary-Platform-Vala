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
// import org.allbinary.string.CommonStrings

//ActualPlatform
public class LogUtil : JObject {
    private static LogUtil? instance;
    private static bool staticSet_instance = false;
    private static LogUtil staticGet_instance() {
        if (!LogUtil.staticSet_instance) {
            LogUtil.staticSet_instance = true;
            LogUtil.instance = new LogUtil();
        }
        return LogUtil.instance;
    }
    private LogFormatUtil logFormatUtil;
    private string LOG_SUCCESS;

    // Java field initializers run after the base constructor
    private void initFieldsLogUtil() {
    this.logFormatUtil = LogFormatUtil.getInstance();
    this.LOG_SUCCESS = "org.allbinary: ";
    }
    

    public static LogUtil getInstance() {
        return LogUtil.staticGet_instance();
    }
    

    public LogUtil() {
        base();
        this.initFieldsLogUtil();
    }
    

    public virtual void putL(Log log) {
        if (log == LogFactory.LOG) {
            return;
        }
        JObject exception = log.getThrowable();
        if (exception == null) {
            return;
        }
        string specialMessage = log.getSpecialMessage();
        JObject anyType = log.getObject();
        string functionName = log.getFunctionName();
        this.put(specialMessage, anyType, functionName, exception);
    }
    

    public virtual void putF(string specialMessage, JObject anyType, string functionName) {
    }
    

    public virtual void putFS(string specialMessage, string className, string functionName) {
    }
    

    public virtual void put(string specialMessage, JObject anyType, string functionName, JObject exception) {
        string className = CommonStrings.getInstance().EMPTY;
        if (JObject.className(anyType) != null) {
            className = JObject.className(anyType);
        }
        string message = this.logFormatUtil.@get(className, functionName, specialMessage, exception);
        JSystem.println(JString.ofString(this.LOG_SUCCESS));
        JSystem.println(JString.ofString(message));
    }
}

