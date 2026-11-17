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
// import org.allbinary.logic.communication.log.LogFormatUtil

public class Log : JObject {
    private LogFormatUtil logFormatUtil;
    private string specialMessage;
    private JObject anyType;
    private string functionName;
    private JObject exception;

    // Java field initializers run after the base constructor
    private void initFieldsLog() {
    this.logFormatUtil = LogFormatUtil.getInstance();
    
    
    
    
    }
    

    public Log(string specialMessage, JObject anyType, string functionName, JObject exception) {
        base();
        this.initFieldsLog();
        this.specialMessage = specialMessage;
        this.anyType = anyType;
        this.functionName = functionName;
        this.exception = exception;
    }
    

    public virtual string getSpecialMessage() {
        return this.specialMessage;
    }
    

    public virtual JObject getObject() {
        return this.anyType;
    }
    

    public virtual string getFunctionName() {
        return this.functionName;
    }
    

    public virtual JObject getThrowable() {
        return this.exception;
    }
    

    public override string toString() {
        string className = CommonStrings.getInstance().EMPTY;
        string clazz = JObject.className(this.anyType);
        if (clazz != null) {
            className = clazz;
        }
        return this.logFormatUtil.@get(className, this.functionName, this.specialMessage, this.exception);
    }
}

