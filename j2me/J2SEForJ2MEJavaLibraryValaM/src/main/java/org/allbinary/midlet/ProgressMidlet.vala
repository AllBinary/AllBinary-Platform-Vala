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
// import org.allbinary.canvas.Processor
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.system.security.licensing.ClientInformationFactory
// import org.allbinary.thread.PrimaryThreadPool
// import org.allbinary.thread.ThreadPool

//J2SEForJ2ME
public class ProgressMidlet : AllBinaryMidlet {
    public AbeClientInformationInterface abeClientInformation;

    // Java field initializers run after the base constructor
    private void initFieldsProgressMidlet() {
    
    }
    

    public ProgressMidlet(ClientInformationFactory clientInformationFactory) {
        base();
        this.initFieldsProgressMidlet();
        this.preInit();
        this.abeClientInformation = clientInformationFactory.getInstance();
    }
    

    public virtual void preInit() {
    }
    

    public virtual void exitProgress(bool isProgress) {
        Processor processor = MidletExitProcessorFactory.getInstance().getExitInstance(this);
        {
            ThreadPool primaryThreadPool = PrimaryThreadPool.getInstance();
            Runnable runnable = new ExitRunnable(this, processor, isProgress);
            primaryThreadPool.runTask(runnable);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

