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
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

//This is mainly for network communications.
public class SecondaryThreadPool : ThreadPool {
    private static ThreadPool? instance;
    private static bool staticSet_instance = false;
    private static ThreadPool staticGet_instance() {
        if (!SecondaryThreadPool.staticSet_instance) {
            SecondaryThreadPool.staticSet_instance = true;
            SecondaryThreadPool.instance = new SecondaryThreadPool("Secondary", 1, ThreadPool.NORMAL_PRIORITY);
        }
        return SecondaryThreadPool.instance;
    }
    

    public static ThreadPool getInstance() {
        return SecondaryThreadPool.staticGet_instance();
    }
    

    public SecondaryThreadPool(string poolName, int32 numThreads, int32 priority) {
        base(poolName, numThreads, priority);
    }
    

    public override void runTask(Runnable task) {
        this.logUtil.putF(new StringMaker().append(StringUtil.getInstance().toString1(task)).appendlong(((int64) (JSystem.currentTimeMillis()))).toString(), this, this.threadPoolStrings.ADD_TASK);
        base.runTask(task);
    }
    

    public override void startTask(Runnable task) {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString1(task)).appendlong(((int64) (JSystem.currentTimeMillis()))).toString(), this, this.commonStrings.RUN);
    }
    

    public override void completedTask(Runnable task) {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString1(task)).appendlong(((int64) (JSystem.currentTimeMillis()))).toString(), this, this.commonStrings.RUN);
    }
}

