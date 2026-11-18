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
// import javax.microedition.lcdui.ItemStateListener
// import org.allbinary.game.state.GameStateCompositeInterface
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.thread.RunnableInterface
// import org.allbinary.util.ABHashtable

public interface GameCanvasRunnableInterface : JObject, RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface {
    

    public abstract string getTitle();
    

    public abstract bool isInitialized();
    

    public abstract bool isPaused();
    

    public abstract void unPause();
    

    public abstract void pause();
    

    public abstract bool isHighScoreSubmitted();
    

    public abstract void setHighScoreSubmitted(bool highScoreSubmitted);
    

    public abstract void processGameOver();
    

    public abstract bool isGameOver();
    

    public abstract void initCommands(CommandListener cmdListener);
    

    public abstract ABHashtable getCurrentStateHashtable();
    

    public abstract ABHashtable getLoadStateHashtable();
    

    public abstract void setLoadStateHashtable(ABHashtable hashtable);
    

    public abstract int32 getType();
}

