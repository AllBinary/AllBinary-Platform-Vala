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

//NoPlatform
public class PreLogUtil : JObject {
    

    public PreLogUtil() {
        base();
    }
    

    public static void put(string specialMessage, JObject anyType, string functionName) {
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().NULL_OBJECT);
    }
    

    public static void putOE(string specialMessage, JObject anyType, string functionName, JObject exception) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public static void putSE(string specialMessage, string className, string functionName, JObject exception) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

