/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import javax.microedition.lcdui.Item
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.util.ABHashtable

public class NullGameCanvasRunnable : JObject, GameCanvasRunnableInterface, RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface, Runnable {
    public static NullGameCanvasRunnable? NULL_GAME_CANVAS_RUNNABLE;
    private static bool staticSet_NULL_GAME_CANVAS_RUNNABLE = false;
    public static NullGameCanvasRunnable staticGet_NULL_GAME_CANVAS_RUNNABLE() {
        if (!NullGameCanvasRunnable.staticSet_NULL_GAME_CANVAS_RUNNABLE) {
            NullGameCanvasRunnable.staticSet_NULL_GAME_CANVAS_RUNNABLE = true;
            NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE = new NullGameCanvasRunnable();
        }
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
    }
    public GameStateFactory gameStateFactory;

    // Java field initializers run after the base constructor
    private void initFieldsNullGameCanvasRunnable() {
    this.gameStateFactory = GameStateFactory.getInstance();
    }

    public NullGameCanvasRunnable() {
        base();
        this.initFieldsNullGameCanvasRunnable();
    }
    

    public virtual string getTitle() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public virtual bool isInitialized() {
        return false;
    }
    

    public virtual bool isPaused() {
        return false;
    }
    

    public virtual void unPause() {
    }
    

    public virtual void pause() {
    }
    

    public virtual bool isHighScoreSubmitted() {
        return false;
    }
    

    public virtual void setHighScoreSubmitted(bool highScoreSubmitted) {
    }
    

    public virtual void processGameOver() {
    }
    

    public virtual bool isGameOver() {
        return false;
    }
    

    public virtual void initCommands(CommandListener cmdListener) {
    }
    

    public virtual ABHashtable getCurrentStateHashtable() {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public virtual ABHashtable getLoadStateHashtable() {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public virtual void setLoadStateHashtable(ABHashtable hashtable) {
    }
    

    public virtual int32 getType() {
        return -1;
    }
    

    public virtual void setGameState(GameState gameState) {
    }
    

    public virtual GameState getGameState() {
        return this.gameStateFactory.NO_GAME_STATE;
    }
    

    public virtual void itemStateChanged(Item item) {
    }
    

    public virtual void paint(Graphics graphics) {
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
    

    public virtual bool isRunning() {
        return false;
    }
    

    public virtual void setRunning(bool isRunning) {
    }
    

    public virtual void setThread(Thread thread) {
    }
    

    public virtual void run() {
    }
}

