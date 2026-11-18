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
// package org.allbinary.midlet
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.canvas.Processor
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class ExitRunnable : JObject, Runnable {
    public LogUtil logUtil;
    private CommonStrings commonStrings;
    private AllBinaryMidlet midlet;
    private Processor processor;
    private bool isProgress;

    // Java field initializers run after the base constructor
    private void initFieldsExitRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    }
    

    public ExitRunnable(AllBinaryMidlet midlet, Processor processor, bool isProgress) {
        base();
        this.initFieldsExitRunnable();
        this.midlet = midlet;
        this.isProgress = isProgress;
        this.processor = processor;
    }
    

    public virtual void run() {
        {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            this.midlet.destroyAppInRunnable(false, this.isProgress);
            this.midlet.setDisplay(NullCanvas.NULL_CANVAS);
            this.midlet.notifyDestroyed();
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
            this.processor.process();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

