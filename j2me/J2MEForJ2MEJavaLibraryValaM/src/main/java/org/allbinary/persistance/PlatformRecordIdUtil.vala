/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.persistance
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.string.CommonSeps

public class PlatformRecordIdUtil : JObject {
    private static PlatformRecordIdUtil? instance;
    private static bool staticSet_instance = false;
    private static PlatformRecordIdUtil staticGet_instance() {
        if (!PlatformRecordIdUtil.staticSet_instance) {
            PlatformRecordIdUtil.staticSet_instance = true;
            PlatformRecordIdUtil.instance = new PlatformRecordIdUtil();
        }
        return PlatformRecordIdUtil.instance;
    }
    private string PLATFORM_SHORT_NAME;

    // Java field initializers run after the base constructor
    private void initFieldsPlatformRecordIdUtil() {
    this.PLATFORM_SHORT_NAME = "JME";
    }

    public PlatformRecordIdUtil() {
        base();
        this.initFieldsPlatformRecordIdUtil();
    }
    

    public static PlatformRecordIdUtil getInstance() {
        return PlatformRecordIdUtil.staticGet_instance();
    }
    

    public virtual string getRecordId(AbeClientInformationInterface abeClientInformation, string baseRecordId) {
        return new StringMaker().append(abeClientInformation.toShortString()).append(CommonSeps.getInstance().UNDERSCORE).append(this.PLATFORM_SHORT_NAME).append(baseRecordId).toString();
    }
}

