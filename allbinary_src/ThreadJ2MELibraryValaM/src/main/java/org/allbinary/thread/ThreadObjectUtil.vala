// Generated Code Do Not Modify
// package org.allbinary.thread
// import org.allbinary.TsUtil

public class ThreadObjectUtil : JObject {
    private static ThreadObjectUtil? instance;
    private static bool staticSet_instance = false;
    private static ThreadObjectUtil staticGet_instance() {
        if (!ThreadObjectUtil.staticSet_instance) {
            ThreadObjectUtil.staticSet_instance = true;
            ThreadObjectUtil.instance = new ThreadObjectUtil();
        }
        return ThreadObjectUtil.instance;
    }
    public PriorityRunnable NULL_PRIORITY_RUNNABLE;

    // Java field initializers run after the base constructor
    private void initFieldsThreadObjectUtil() {
    this.NULL_PRIORITY_RUNNABLE = new NullPriorityRunnable();
    }

    public ThreadObjectUtil() {
        base();
        this.initFieldsThreadObjectUtil();
    }
    

    public static ThreadObjectUtil getInstance() {
        return ThreadObjectUtil.staticGet_instance();
    }
    

    public virtual void notifyObject(JObject anyType) {
        anyType.notify();
    }
    

    public virtual void waitObject(JObject anyType) {
        anyType.wait();
    }
    

    public virtual void waitObjectFor(JObject anyType, int64 delay) {
        TsUtil.getInstance().waitFor(anyType, delay);
    }
    

    public virtual void processThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.start();
    }
}

