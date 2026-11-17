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

public class ThreadUtil : JObject {
    private static ThreadUtil? instance;
    private static bool staticSet_instance = false;
    private static ThreadUtil staticGet_instance() {
        if (!ThreadUtil.staticSet_instance) {
            ThreadUtil.staticSet_instance = true;
            ThreadUtil.instance = new ThreadUtil();
        }
        return ThreadUtil.instance;
    }
    public LogUtil logUtil;
    public string JOIN;

    // Java field initializers run after the base constructor
    private void initFieldsThreadUtil() {
    this.logUtil = LogUtil.getInstance();
    this.JOIN = "join";
    }

    public ThreadUtil() {
        base();
        this.initFieldsThreadUtil();
    }
    

    public static ThreadUtil getInstance() {
        return ThreadUtil.staticGet_instance();
    }
    

    public virtual bool isRunning(Thread thread) {
        if (thread != null && thread.isAlive()) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void join(Thread thread) {
        if (ThreadUtil.getInstance().isRunning(thread)) {
            this.logUtil.putF("Waiting for Thread To Join/End", this, this.JOIN);
            thread.join();
        }
    }
}

