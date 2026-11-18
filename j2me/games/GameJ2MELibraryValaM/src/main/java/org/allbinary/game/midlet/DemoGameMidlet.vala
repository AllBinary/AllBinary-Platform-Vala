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
// import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.system.security.licensing.ClientInformationFactory
// import org.allbinary.thread.PrimaryThreadPool
// import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable
// import org.allbinary.util.ABHashtable

public class DemoGameMidlet : GameMidlet {
    

    public DemoGameMidlet(ClientInformationFactory clientInformationFactory) {
        base(clientInformationFactory);
    }
    

    public virtual bool isContinue() {
        ABHashtable hashtable = this.getStartStateHashtable();
        if (hashtable != null && hashtable.size() > 0) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual int32 getHighestLevel() {
        return 1;
    }
    

    public virtual GameCanvasRunnableInterface createDemoGameCanvasRunnableInterface() {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, this.commonStrings.CREATE);
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
    }
    

    public virtual GameCanvasRunnableInterface createGameCanvasRunnable(AllBinaryGameLayerManager allBinaryGameLayerManager) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual GameCanvasRunnableInterface createGameCanvasRunnableInterface() {
        return this.createGameCanvasRunnable(this.createGameLayerManager());
    }
    

    public virtual void demoSetup() {
    }
    

    public virtual void postDemoSetup() {
    }
    

    public override void setDemo() {
        this.logUtil.putF(this.commonStrings.START, this, "setDemo");
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.start();
        PrimaryThreadPool.getInstance().runTask(new DemoRunnable(this));
    }
    

    public override void createGame() {
        string CREATE_GAME = "createGame";
        this.logUtil.putF(this.commonStrings.START, this, CREATE_GAME);
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.start();
        ABHashtable hashtable = this.getStartStateHashtable();
        this.setStartStateHashtable(StdUtil.getInstance().NULL_TABLE);
        PrimaryThreadPool.getInstance().runTask(new CreateGameRunnable(this, hashtable));
        this.logUtil.putF(this.commonStrings.END, this, CREATE_GAME);
    }
    

    public virtual bool isReady() {
        return true;
    }
}

