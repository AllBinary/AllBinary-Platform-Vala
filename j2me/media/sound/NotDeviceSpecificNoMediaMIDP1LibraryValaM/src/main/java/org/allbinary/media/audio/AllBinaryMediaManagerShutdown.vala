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
// package org.allbinary.media.audio
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class AllBinaryMediaManagerShutdown : JObject {
    private static AllBinaryMediaManagerShutdown? instance;
    private static bool staticSet_instance = false;
    private static AllBinaryMediaManagerShutdown staticGet_instance() {
        if (!AllBinaryMediaManagerShutdown.staticSet_instance) {
            AllBinaryMediaManagerShutdown.staticSet_instance = true;
            AllBinaryMediaManagerShutdown.instance = new AllBinaryMediaManagerShutdown();
        }
        return AllBinaryMediaManagerShutdown.instance;
    }

    public AllBinaryMediaManagerShutdown() {
        base();
    }
    

    public static void shutdown(SoundsFactoryInterface soundsFactoryInterface) {
        LogUtil logUtil = LogUtil.getInstance();
        CommonStrings commonStrings = CommonStrings.getInstance();
        logUtil.putF(commonStrings.START, AllBinaryMediaManagerShutdown.staticGet_instance(), "shutdown");
        AllBinaryMediaManager.shutdown(soundsFactoryInterface);
    }
}

