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
// import org.eclipse.swt.widgets.Display

public class SWTRunnableProcessor : SWTProcessor {
    private static SWTRunnableProcessor? instanceR;
    private static bool staticSet_instanceR = false;
    private static SWTRunnableProcessor staticGet_instanceR() {
        if (!SWTRunnableProcessor.staticSet_instanceR) {
            SWTRunnableProcessor.staticSet_instanceR = true;
            SWTRunnableProcessor.instanceR = new SWTRunnableProcessor();
        }
        return SWTRunnableProcessor.instanceR;
    }
    

    public static SWTRunnableProcessor getInstance() {
        return SWTRunnableProcessor.staticGet_instanceR();
    }
    

    public SWTRunnableProcessor() {
        base();
    }
    

    public override void process(Display display) {
        this.runnable.run();
    }
}

