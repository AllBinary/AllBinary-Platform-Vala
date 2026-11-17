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
// import org.allbinary.string.CommonStrings

//ActualPlatform
public class PreLogUtil : JObject {
    private const string LOG_SUCCESS = "org.allbinary: ";
    

    public PreLogUtil() {
        base();
    }
    

    public static void put(string specialMessage, JObject anyType, string functionName) {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    public static void putOE(string specialMessage, JObject anyType, string functionName, JObject exception) {
        string className = CommonStrings.getInstance().EMPTY;
        if (JObject.className(anyType) != null) {
            className = JObject.className(anyType);
        }
        string message = LogFormatUtil.getInstance().@get(className, functionName, specialMessage, exception);
        JSystem.println(JString.ofString(PreLogUtil.LOG_SUCCESS));
        JSystem.println(JString.ofString(message));
    }
    

    public static void putS(string specialMessage, string className, string functionName) {
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    public static void putSE(string specialMessage, string className, string functionName, JObject exception) {
        string message = LogFormatUtil.getInstance().@get(className, functionName, specialMessage, exception);
        JSystem.println(JString.ofString(PreLogUtil.LOG_SUCCESS));
        JSystem.println(JString.ofString(message));
    }
    

    public static string getClassName(JObject anyType) {
        return JObject.className(anyType);
    }
}

