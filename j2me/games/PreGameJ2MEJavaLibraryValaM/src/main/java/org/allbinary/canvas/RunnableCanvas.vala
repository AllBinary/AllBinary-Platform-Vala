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
// package org.allbinary.canvas
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.TsUtil
// import org.allbinary.game.displayable.canvas.NullWaitGameRunnable
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.NullThread
// import org.allbinary.thread.RunnableInterface
// import org.allbinary.thread.ThreadObjectUtil
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList

public class RunnableCanvas : MyCanvas, RunnableInterface, Runnable {
    public NullUtil nullUtil;
    public StdUtil stdUtil;
    public ABSystemWrapper systemWrapper;
    public TsUtil tsUtil;
    private Thread thread;
    private Thread currentThread;
    private bool running;
    public TimeDelayHelper loopTimeHelper;
    public Processor runnableCanvasRefreshHelper;
    public CommonLabels commonLabels;
    public ThreadObjectUtil threadObjectUtil;
    public string SET_RUNNING;
    private string IS_RUNNING;
    private string THREAD;
    private string NOT_EQUAL;
    private string PAUSE_SLEEP;
    private string START_PAUSE;
    private string END_PAUSE;
    private string PROCESS_LOOP_SLEEP;
    private int64 pauseWait;
    private bool notified;

    // Java field initializers run after the base constructor
    private void initFieldsRunnableCanvas() {
    this.nullUtil = NullUtil.getInstance();
    this.stdUtil = StdUtil.getInstance();
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.thread = NullThread.NULL_THREAD;
    this.currentThread = NullThread.NULL_THREAD;
    this.running = false;
    this.loopTimeHelper = new TimeDelayHelper(NullWaitGameRunnable.getInstance().WAIT);
    this.runnableCanvasRefreshHelper = Processor.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    this.SET_RUNNING = "setRunning";
    this.IS_RUNNING = "isRunning";
    this.THREAD = "Thread: ";
    this.NOT_EQUAL = " != ";
    this.PAUSE_SLEEP = "pause sleep";
    this.START_PAUSE = "start pause - game thread sleep at: ";
    this.END_PAUSE = "end pause - game thread sleep at: ";
    this.PROCESS_LOOP_SLEEP = "processLoopSleep";
    this.pauseWait = 0;
    this.notified = false;
    }
    

    public RunnableCanvas(CommandListener commandListener, BasicArrayList childNameList, bool hasParam) {
        base(CommonStrings.getInstance().UNKNOWN, childNameList);
        this.initFieldsRunnableCanvas();
        this.logUtil.putF(new StringMaker().append("RunnableCanvas delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
        this.runnableCanvasRefreshHelper = new RunnableCanvasRefreshHelper(this);
        if (commandListener != null) {
            this.initCommands(commandListener);
        } else if (hasParam) {
            this.logUtil.putF("commandListener was null", this, "initCommands");
        }
    }
    

    public virtual void initCommands(CommandListener cmdListener) {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, "initCommands");
    }
    

    public virtual bool isMainCanvas() {
        if (this.getCustomCommandListener() != null) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void setThread(Thread thread) {
        this.thread = thread;
    }
    

    public virtual void setRunning(bool running) {
        this.running = running;
        if (!this.running) {
            this.thread = NullThread.NULL_THREAD;
            {
                this.threadObjectUtil.notifyObject(this);
            }
        }
        this.logUtil.putF(new StringMaker().append(this.IS_RUNNING).appendboolean(this.running).toString(), this, this.SET_RUNNING);
    }
    

    public virtual bool isRunning() {
        if (this.thread == this.currentThread) {
            return this.running;
        } else {
            StringMaker stringBuffer = new StringMaker();
            stringBuffer.append(this.THREAD);
            if (this.thread != null) {
                stringBuffer.append(this.thread.toString());
            }
            stringBuffer.append(this.NOT_EQUAL);
            if (this.currentThread != null) {
                stringBuffer.append(StringUtil.getInstance().toString1(this.currentThread));
            }
            this.logUtil.putF(stringBuffer.toString(), this, this.IS_RUNNING);
            return false;
        }
    }
    

    public virtual TimeDelayHelper getLoopTimeHelperP() {
        return this.loopTimeHelper;
    }
    

    public virtual void setWait(int32 wait) {
        this.loopTimeHelper.delay = wait;
        this.pauseWait = ((int64) (wait)) * 3;
        this.logUtil.putF(new StringMaker().append("setWait - delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    public virtual int32 getWait() {
        return this.loopTimeHelper.delay;
    }
    

    public virtual void setCurrentThread() {
        this.currentThread = Thread.currentThread();
    }
    

    public virtual void setCurrentThreadFake() {
        this.currentThread = this.thread;
    }
    

    public override void showNotify() {
        {
            this.stopWaiting();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private void stopWaiting() {
        this.notified = true;
        {
            this.threadObjectUtil.notifyObject(this);
        }
        this.repaint();
    }
    

    public virtual void waitOnNotify(int64 wait) {
        if (!this.notified) {
            if (wait > 0) {
                this.threadObjectUtil.waitObjectFor(this, wait);
            } else {
                this.threadObjectUtil.waitObject(this);
            }
        }
    }
    

    public virtual void processSleep() {
        Thread.sleep(this.pauseWait);
    }
    

    public virtual bool isPausable() {
        return false;
    }
    

    public virtual void processGameSleep(int64 sleep) {
        Thread.sleep(sleep);
    }
    

    public virtual void processLoopSleep() {
        this.runnableCanvasRefreshHelper.process();
        if (this.isPaused()) {
            StringMaker stringMaker = new StringMaker();
            if (this.isRunning() && !this.isSingleThread()) {
                stringMaker.@delete(0, stringMaker.length());
                int64 currentTimeMillis = this.systemWrapper.currentTimeMillis();
                this.logUtil.putF(stringMaker.append(this.START_PAUSE).appendlong(currentTimeMillis).append(this.PAUSE_SLEEP).appendlong(this.pauseWait).toString(), this, this.PROCESS_LOOP_SLEEP);
                while (this.isPaused() && this.isRunning() && !this.isSingleThread()) {
                    this.processSleep();
                    if (!this.isPausable()) {
                        stringMaker.@delete(0, stringMaker.length());
                        this.logUtil.putF(stringMaker.append(this.END_PAUSE).appendlong(currentTimeMillis).toString(), this, this.PROCESS_LOOP_SLEEP);
                        return;
                    }
                }
            }
        }
        int64 elapsedTime = this.loopTimeHelper.getElapsedTNT();
        int64 wait = ((int64) (this.loopTimeHelper.delay));
        if (elapsedTime > wait) {
            elapsedTime = wait;
        } else {
            this.processGameSleep(wait - elapsedTime);
        }
    }
    

    public virtual bool isSingleThread() {
        return false;
    }
    

    public override void run() {
        this.setCurrentThread();
    }
    

    public virtual void end2() {
    }
    

    public virtual int32 getType() {
        return -1;
    }
}

