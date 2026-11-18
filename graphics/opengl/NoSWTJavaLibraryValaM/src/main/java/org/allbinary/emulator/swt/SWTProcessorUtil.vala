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
// package org.allbinary.emulator.swt

public class SWTProcessorUtil : JObject {
    private static SWTProcessorUtil? instance;
    private static bool staticSet_instance = false;
    private static SWTProcessorUtil staticGet_instance() {
        if (!SWTProcessorUtil.staticSet_instance) {
            SWTProcessorUtil.staticSet_instance = true;
            SWTProcessorUtil.instance = new SWTProcessorUtil();
        }
        return SWTProcessorUtil.instance;
    }
    public SWTProcessor swtProcessor;

    // Java field initializers run after the base constructor
    private void initFieldsSWTProcessorUtil() {
    this.swtProcessor = SWTProcessor.getInstance();
    }

    public SWTProcessorUtil() {
        base();
        this.initFieldsSWTProcessorUtil();
    }
    

    public static SWTProcessorUtil getInstance() {
        return SWTProcessorUtil.staticGet_instance();
    }
}

