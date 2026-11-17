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
// package org.allbinary.logic.communication.log.config.type
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class LogConfigTypes : JObject {
    public static BasicArrayList? LOGGING;
    private static bool staticSet_LOGGING = false;
    public static BasicArrayList staticGet_LOGGING() {
        if (!LogConfigTypes.staticSet_LOGGING) {
            LogConfigTypes.staticSet_LOGGING = true;
            LogConfigTypes.LOGGING = new BasicArrayListD();
        }
        return LogConfigTypes.LOGGING;
    }
    

    public LogConfigTypes() {
        base();
    }
}

