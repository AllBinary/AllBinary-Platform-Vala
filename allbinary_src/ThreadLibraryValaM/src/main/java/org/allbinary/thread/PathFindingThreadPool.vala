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

//This is mainly for network communications.
public class PathFindingThreadPool : ThreadPool {
    private static ThreadPool? instance;
    private static bool staticSet_instance = false;
    private static ThreadPool staticGet_instance() {
        if (!PathFindingThreadPool.staticSet_instance) {
            PathFindingThreadPool.staticSet_instance = true;
            PathFindingThreadPool.instance = new PathFindingThreadPool("PathFinding", 1, 1);
        }
        return PathFindingThreadPool.instance;
    }
    

    public static ThreadPool getInstance() {
        return PathFindingThreadPool.staticGet_instance();
    }
    

    public PathFindingThreadPool(string poolName, int32 numThreads, int32 priority) {
        base(poolName, numThreads, ThreadPool.NORMAL_PRIORITY);
    }
    

    public override void runTaskWithPriority(PriorityRunnable task) {
        base.runTaskWithPriority(task);
    }
    

    public override void runTask(Runnable task) {
        base.runTask(task);
    }
    

    public override void startTask(Runnable task) {
    }
    

    public override void completedTask(Runnable task) {
    }
}

