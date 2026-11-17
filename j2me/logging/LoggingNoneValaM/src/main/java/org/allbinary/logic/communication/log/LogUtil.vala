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
    

    public static LogUtil getInstance() {
        return LogUtil.staticGet_instance();
    }
    

    public LogUtil() {
        base();
    }
    

    public virtual void putP(Log log) {
    }
    

    public virtual void putF(string specialMessage, JObject anyType, string functionName) {
    }
    

    public virtual void putFS(string specialMessage, string className, string functionName) {
    }
    

    public virtual void put(string specialMessage, JObject anyType, string functionName, JObject exception) {
    }
}

