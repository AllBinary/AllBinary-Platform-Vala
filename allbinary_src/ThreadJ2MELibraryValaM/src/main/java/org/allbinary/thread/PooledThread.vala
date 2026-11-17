/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class PooledThread : Thread {
    private LogUtil logUtil;
    private CommonStrings commonStrings;
    private ThreadObjectUtil threadObjectUtil;
    private ThreadPool threadPool;
    private string INTERRUPT_EXCEPTION;

    // Java field initializers run after the base constructor
    private void initFieldsPooledThread() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    
    this.INTERRUPT_EXCEPTION = "Exit InterruptedException";
    }
    

    public PooledThread(ThreadPool threadPool) {
        base.withName(threadPool.createName());
        this.initFieldsPooledThread();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR);
        this.threadPool = threadPool;
    }
    

    public override void run() {
        this.threadPool.threadStarted();
        while (true) {
            Runnable task2 = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
            {
                task2 = this.threadPool.getTask();
                this.threadPool.runningTask = true;
                this.threadPool.startTask(task2);
            } /* catch (InterruptedException ex): a thrown Java exception stops the program */
            if (task2 == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                break;
            }
            {
                task2.run();
                this.threadPool.completedTask(task2);
                this.threadPool.runningTask = false;
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
        this.threadPool.threadStopped();
    }
}

