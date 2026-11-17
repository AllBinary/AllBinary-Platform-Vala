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
// import org.allbinary.logic.java.exception.ExceptionUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.TimeStampUtil

//NoPlatform
public class LogFormatUtil : JObject {
    private static LogFormatUtil? instance;
    private static bool staticSet_instance = false;
    private static LogFormatUtil staticGet_instance() {
        if (!LogFormatUtil.staticSet_instance) {
            LogFormatUtil.staticSet_instance = true;
            LogFormatUtil.instance = new LogFormatUtil();
        }
        return LogFormatUtil.instance;
    }
    

    public static LogFormatUtil getInstance() {
        return LogFormatUtil.staticGet_instance();
    }
    

    public LogFormatUtil() {
        base();
    }
    

    public virtual string @get(string className, string functionName, string specialMessage, JObject exception) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual string getS(string className, string functionName, string specialMessage) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual string getO(JObject exception) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

