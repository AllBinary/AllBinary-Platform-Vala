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
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class ThreadPool : JObject {
    private const string ROOT_NAME = "-PooledThread-";
    public static int32 NORMAL_PRIORITY;
    private static bool staticSet_NORMAL_PRIORITY = false;
    public static int32 staticGet_NORMAL_PRIORITY() {
        if (!ThreadPool.staticSet_NORMAL_PRIORITY) {
            ThreadPool.staticSet_NORMAL_PRIORITY = true;
            ThreadPool.NORMAL_PRIORITY = Thread.NORM_PRIORITY;
        }
        return ThreadPool.NORMAL_PRIORITY;
    }
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public NullRunnable NULL_RUNNABLE;
    public ThreadPoolStrings threadPoolStrings;
    public ThreadObjectUtil threadObjectUtil;
    private string poolName;
    private int32 priority;
    private bool isAlive;
    private BasicArrayList taskQueue;
    private int32 threadID;
    private int32 numThreads;
    public bool runningTask;

    // Java field initializers run after the base constructor
    private void initFieldsThreadPool() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.NULL_RUNNABLE = NullRunnable.getInstance();
    this.threadPoolStrings = ThreadPoolStrings.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    
    
    this.isAlive = false;
    this.taskQueue = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.threadID = 0;
    
    this.runningTask = false;
    }
    

    public ThreadPool(string poolName, int32 numThreads, int32 priority) {
        base();
        this.initFieldsThreadPool();
        this.poolName = poolName;
        this.priority = priority;
        this.numThreads = numThreads;
    }
    

    public virtual void init() {
        if (!this.isAlive) {
            this.isAlive = true;
            this.taskQueue = new BasicArrayListD();
            PooledThread pooledThread = null;
            for (int32 i = 0; i < this.numThreads; i++) {
                pooledThread = new PooledThread(this);
                pooledThread.setPriority(this.priority);
                pooledThread.start();
            }
        }
    }
    

    public virtual void runAPriorityTask() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void runTaskWithPriority(PriorityRunnable task) {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task != null) {
                int32 size = this.taskQueue.size();
                PriorityRunnable runnable = null;
                PriorityRunnable lowerPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
                for (int32 index = 0; index < size; index++) {
                    runnable = ((PriorityRunnable) this.taskQueue.@get(index));
                    if (runnable.getPriority() > task.getPriority()) {
                        lowerPriorityRunnable = runnable;
                        break;
                    }
                }
                if (lowerPriorityRunnable == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                    this.taskQueue.add(task);
                } else {
                    int32 index = this.taskQueue.indexOf(lowerPriorityRunnable);
                    this.taskQueue.addAt(index, task);
                }
                this.notify();
            }
        }
    }
    

    public virtual void runTask(Runnable task) {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task != null) {
                this.taskQueue.add(task);
                this.notify();
            }
        }
    }
    

    public virtual Runnable getTask() {
        {
            while (this.taskQueue.size() == 0) {
                if (!this.isAlive) {
                    return this.NULL_RUNNABLE;
                }
                this.wait();
            }
            Runnable runnable = ((Runnable) this.taskQueue.removeAt(0));
            return runnable;
        }
    }
    

    public virtual void clear() {
        {
            if (this.isAlive) {
                this.taskQueue.clear();
            }
        }
    }
    

    public virtual void close() {
        {
            if (this.isAlive) {
                this.isAlive = false;
                this.taskQueue.clear();
            }
        }
    }
    

    public virtual void join() {
        {
            this.isAlive = false;
            this.taskQueue.clear();
            this.notifyAll();
        }
    }
    

    public virtual bool isBusy() {
        if (!this.isAlive) {
            return false;
        }
        if (this.taskQueue.size() > 0) {
            return true;
        }
        if (this.runningTask) {
            return true;
        }
        return false;
    }
    

    public virtual void threadStarted() {
    }
    

    public virtual void threadStopped() {
        if (this.numThreads == 1) {
            this.isAlive = false;
            this.taskQueue.clear();
        }
    }
    

    public virtual void startTask(Runnable task) {
    }
    

    public virtual void completedTask(Runnable task) {
    }
    

    public virtual string createName() {
        return new StringMaker().append(this.poolName).append(ThreadPool.ROOT_NAME).appendint(this.threadID++).toString();
    }
}

