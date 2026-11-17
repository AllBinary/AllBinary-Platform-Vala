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
// package org.allbinary.thread
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class PrimaryThreadPool : ThreadPool {
    private static ThreadPool? THREAD_POOL;
    private static bool staticSet_THREAD_POOL = false;
    private static ThreadPool staticGet_THREAD_POOL() {
        if (!PrimaryThreadPool.staticSet_THREAD_POOL) {
            PrimaryThreadPool.staticSet_THREAD_POOL = true;
            PrimaryThreadPool.THREAD_POOL = new ThreadPool("Primary", 1, ThreadPool.NORMAL_PRIORITY);
        }
        return PrimaryThreadPool.THREAD_POOL;
    }
    

    public static ThreadPool getInstance() {
        return PrimaryThreadPool.staticGet_THREAD_POOL();
    }
    

    public PrimaryThreadPool(string poolName, int32 numThreads, int32 priority) {
        base(poolName, numThreads, priority);
    }
    

    public override void runTask(Runnable task) {
        this.logUtil.putF(new StringMaker().append(StringUtil.getInstance().toString1(task)).appendlong(((int64) (JSystem.currentTimeMillis()))).toString(), this, this.threadPoolStrings.ADD_TASK);
        base.runTask(task);
    }
    

    public override void startTask(Runnable task) {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString1(task)).toString(), this, this.commonStrings.RUN);
    }
    

    public override void completedTask(Runnable task) {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString1(task)).toString(), this, this.commonStrings.RUN);
    }
}

