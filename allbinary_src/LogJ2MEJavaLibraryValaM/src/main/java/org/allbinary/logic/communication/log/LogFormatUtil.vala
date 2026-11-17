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

//ActualPlatform
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
    private TimeStampUtil timeStampUtil;
    private CommonSeps commonSeps;
    private string NONE;
    private string LOG_ERROR;
    private string EMPTY;
    private string STACK_TRACE;
    private string TIME;
    private string CLASS_NAME;
    private string FUNCTION_CALL;
    private string SPECIAL_MESSAGE;
    private StringUtil stringUtil;
    private ExceptionUtil exceptionUtil;
    private NullUtil nullUtil;

    // Java field initializers run after the base constructor
    private void initFieldsLogFormatUtil() {
    this.timeStampUtil = TimeStampUtil.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.NONE = "None";
    this.LOG_ERROR = "\nLog-Error: ";
    this.EMPTY = "Empty";
    this.STACK_TRACE = "\nStack Trace: ";
    this.TIME = "Time: ";
    this.CLASS_NAME = this.commonSeps.SPACE;
    this.FUNCTION_CALL = CommonLabels.getInstance().COLON_SEP;
    this.SPECIAL_MESSAGE = "> ";
    this.stringUtil = StringUtil.getInstance();
    this.exceptionUtil = ExceptionUtil.getInstance();
    this.nullUtil = NullUtil.getInstance();
    }
    

    public static LogFormatUtil getInstance() {
        return LogFormatUtil.staticGet_instance();
    }
    

    public LogFormatUtil() {
        base();
        this.initFieldsLogFormatUtil();
    }
    

    public virtual string @get(string className, string functionName, string specialMessage, JObject exception) {
        StringMaker stringBuffer = this.getF(className, functionName);
        stringBuffer.append(this.getO(exception));
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    public virtual string getS(string className, string functionName, string specialMessage) {
        StringMaker stringBuffer = this.getF(className, functionName);
        stringBuffer.append(this.SPECIAL_MESSAGE);
        stringBuffer.append(specialMessage);
        stringBuffer.append(this.commonSeps.NEW_LINE);
        return stringBuffer.toString();
    }
    

    private StringMaker getF(string className, string functionName) {
        StringMaker stringBuffer = new StringMaker();
        stringBuffer.append(this.TIME);
        stringBuffer.append(this.timeStampUtil.getAsString());
        stringBuffer.append(this.CLASS_NAME);
        stringBuffer.append(className);
        stringBuffer.append(this.FUNCTION_CALL);
        stringBuffer.append(functionName);
        return stringBuffer;
    }
    

    public virtual string getO(JObject exception) {
        if (exception != this.nullUtil.NULL_OBJECT) {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(this.LOG_ERROR);
            string exceptionAsString = exception.toString();
            stringBuffer.append(exceptionAsString);
            stringBuffer.append(this.STACK_TRACE);
            if (exception != this.nullUtil.NULL_OBJECT) {
                stringBuffer.append(this.exceptionUtil.getStackTrace(((JException) exception)));
            } else {
                stringBuffer.append(this.stringUtil.NULL_STRING);
            }
            return stringBuffer.toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
}

