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
// package org.allbinary.game.displayable.canvas
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.score.NoHighScoresFactory
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class NullGameCanvas : AllBinaryGameCanvas {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!NullGameCanvas.staticSet_instance) {
            NullGameCanvas.staticSet_instance = true;
            NullGameCanvas.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return NullGameCanvas.instance;
    }
    public const string NO_GAME = "No Background Game";
    public new const int32 TYPE = 1;
    private bool runningNull;

    // Java field initializers run after the base constructor
    private void initFieldsNullGameCanvas() {
    this.runningNull = true;
    }
    

    private static NullGameCanvas createNull() {
        {
            return new NullGameCanvas(AllBinaryGameLayerManager.getNullInstance());
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public static NullGameCanvas getInstance() {
        if (NullGameCanvas.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            NullGameCanvas.instance = NullGameCanvas.createNull();
        }
        return ((NullGameCanvas) NullGameCanvas.staticGet_instance());
    }
    

    public static NullGameCanvas createCanvas(AllBinaryGameLayerManager gameLayerManager) {
        NullGameCanvas nullGameCanvas = new NullGameCanvas(gameLayerManager);
        nullGameCanvas.setInitialized(true);
        nullGameCanvas.setTitle(NullGameCanvas.NO_GAME);
        return nullGameCanvas;
    }
    

    public NullGameCanvas(AllBinaryGameLayerManager gameLayerManager) {
        base(NullCommandListener.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false);
        this.initFieldsNullGameCanvas();
        base.setWait(1200);
    }
    

    public override bool isGameOver() {
        return false;
    }
    

    public override void setRunning(bool running) {
        this.runningNull = running;
    }
    

    public override bool isRunning() {
        return this.runningNull;
    }
    

    public override void pause() {
        this.setPaused(true);
    }
    

    public override void unPause() {
        this.setPaused(false);
    }
    

    public override void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.setCommandListener(cmdListener);
    }
    

    public override void buildGameInit(bool isProgress) {
    }
    

    public override void draw(Graphics graphics) {
    }
    

    public override void run() {
        {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override int32 getType() {
        return NullGameCanvas.TYPE;
    }
}

