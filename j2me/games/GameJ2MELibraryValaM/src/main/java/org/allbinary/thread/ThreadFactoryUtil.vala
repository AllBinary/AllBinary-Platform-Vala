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
// import org.allbinary.J2MEUtil
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.DemoCanvas
// import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
// import org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class ThreadFactoryUtil : JObject {
    private static ThreadFactoryUtil? instance;
    private static bool staticSet_instance = false;
    private static ThreadFactoryUtil staticGet_instance() {
        if (!ThreadFactoryUtil.staticSet_instance) {
            ThreadFactoryUtil.staticSet_instance = true;
            ThreadFactoryUtil.instance = new ThreadFactoryUtil();
        }
        return ThreadFactoryUtil.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsThreadFactoryUtil() {
    this.logUtil = LogUtil.getInstance();
    }

    public ThreadFactoryUtil() {
        base();
        this.initFieldsThreadFactoryUtil();
    }
    

    public static ThreadFactoryUtil getInstance() {
        return ThreadFactoryUtil.staticGet_instance();
    }
    

    public virtual Thread getInstanceGameCanvasRunnable(GameCanvasRunnableInterface runnable) {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    public virtual Thread getInstanceForRunnable(ABRunnable runnable) {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    private Thread getInstanceType(Runnable runnable, int32 type) {
        CommonStrings commonStrings = CommonStrings.getInstance();
        if (J2MEUtil.isHTML()) {
            if (type == DemoCanvas.TYPE || type == AllBinaryGameCanvas.TYPE) {
                RunnableCanvasSingleThreadStartRunnable demoGameSingleThreadStartRunnable = new RunnableCanvasSingleThreadStartRunnable(((RunnableCanvas) runnable));
                PreLogUtil.put(new StringMaker().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil.getInstance().toString1(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                ThreadPool primaryThreadPool = PrimaryThreadPool.getInstance();
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable);
            } else {
                PreLogUtil.put(new StringMaker().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil.getInstance().toString1(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                ThreadPool primaryThreadPool = PrimaryThreadPool.getInstance();
                primaryThreadPool.runTask(runnable);
            }
        }
        Thread thread = new Thread(runnable, runnable.toString());
        this.logUtil.putF(thread.toString(), this, commonStrings.CONSTRUCTOR);
        return thread;
    }
    

    public virtual void start(Thread thread) {
        thread.start();
    }
}

