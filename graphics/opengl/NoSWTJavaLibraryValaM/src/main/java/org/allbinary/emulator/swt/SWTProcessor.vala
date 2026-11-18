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
// import org.allbinary.thread.NullRunnable

public class SWTProcessor : JObject {
    private static SWTProcessor? instance;
    private static bool staticSet_instance = false;
    private static SWTProcessor staticGet_instance() {
        if (!SWTProcessor.staticSet_instance) {
            SWTProcessor.staticSet_instance = true;
            SWTProcessor.instance = new SWTProcessor();
        }
        return SWTProcessor.instance;
    }
    public Runnable runnable;

    // Java field initializers run after the base constructor
    private void initFieldsSWTProcessor() {
    this.runnable = NullRunnable.getInstance();
    }

    public SWTProcessor() {
        base();
        this.initFieldsSWTProcessor();
    }
    

    public static SWTProcessor getInstance() {
        return SWTProcessor.staticGet_instance();
    }
    

    public virtual void process(Display display) {
        display.sleep();
    }
}

