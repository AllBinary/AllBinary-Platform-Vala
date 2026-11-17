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
// package org.allbinary.thread

public class ABRunnable : JObject, RunnableInterface, Runnable {
    private bool running;

    // Java field initializers run after the base constructor
    private void initFieldsABRunnable() {
    this.running = false;
    }

    public ABRunnable() {
        base();
        this.initFieldsABRunnable();
    }
    

    public virtual void setThread(Thread thread) {
    }
    

    public virtual bool isRunning() {
        return this.running;
    }
    

    public virtual void setRunning(bool running) {
        this.running = running;
    }
    

    public virtual void run() {
    }
    

    public virtual int32 getType() {
        return -1;
    }
}

