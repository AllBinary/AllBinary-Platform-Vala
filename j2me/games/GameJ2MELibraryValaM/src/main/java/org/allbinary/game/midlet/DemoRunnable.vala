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
// package org.allbinary.game.midlet
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonStrings

public class DemoRunnable : JObject, Runnable {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private DemoGameMidlet demoGameMidlet;
    private DemoGameMidletEvent startDemoGameMidletEvent;

    // Java field initializers run after the base constructor
    private void initFieldsDemoRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    public DemoRunnable(DemoGameMidlet demoGameMidlet) {
        base();
        this.initFieldsDemoRunnable();
        this.demoGameMidlet = demoGameMidlet;
        this.startDemoGameMidletEvent = new DemoGameMidletEvent(this.demoGameMidlet, DemoGameMidletStateFactory.getInstance().START_DEMO);
    }
    

    public virtual void run() {
        {
            this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().START_LABEL).append("GameCanvasRunnableInterface").toString(), this, this.commonStrings.RUN);
            this.demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, ProgressCanvasFactory.getInstance());
            this.demoGameMidlet.setGameCanvasRunnableInterface(this.demoGameMidlet.createDemoGameCanvasRunnableInterface());
            this.demoGameMidlet.demoSetup();
            DemoGameMidletEventHandler.getInstance().fireEvent(this.startDemoGameMidletEvent);
            this.demoGameMidlet.startGameCanvasRunnableInterface();
            this.demoGameMidlet.postDemoSetup();
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

