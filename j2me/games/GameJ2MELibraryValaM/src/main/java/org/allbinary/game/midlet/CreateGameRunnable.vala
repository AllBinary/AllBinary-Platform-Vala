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
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.ABHashtable

public class CreateGameRunnable : JObject, Runnable {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private DemoGameMidlet demoGameMidlet;
    private ABHashtable hashtable;
    private DemoGameMidletEvent startGameMidletEvent;

    // Java field initializers run after the base constructor
    private void initFieldsCreateGameRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    }
    

    public CreateGameRunnable(DemoGameMidlet demoGameMidlet, ABHashtable hashtable) {
        base();
        this.initFieldsCreateGameRunnable();
        this.demoGameMidlet = demoGameMidlet;
        this.hashtable = hashtable;
        this.startGameMidletEvent = new DemoGameMidletEvent(this, DemoGameMidletStateFactory.getInstance().START_GAME);
    }
    

    public virtual void run() {
        {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            this.demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, progressCanvas);
            this.demoGameMidlet.stopGameCanvasRunnableInterface();
            this.demoGameMidlet.setGameCanvasRunnableInterface(this.demoGameMidlet.createGameCanvasRunnableInterface());
            this.demoGameMidlet.getGameCanvasRunnableInterface().setLoadStateHashtable(this.hashtable);
            this.demoGameMidlet.startGameCanvasRunnableInterface();
            DemoGameMidletEventHandler.getInstance().fireEvent(this.startGameMidletEvent);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

