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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import org.allbinary.game.layer.AllBinaryGameLayerManager

public class NullAllBinaryGameCanvas : JObject, AllBinaryGameCanvasInterface, DisplayableInterface {
    public static NullAllBinaryGameCanvas? NULL_ALLBINARY_GAME_CANVAS;
    private static bool staticSet_NULL_ALLBINARY_GAME_CANVAS = false;
    public static NullAllBinaryGameCanvas staticGet_NULL_ALLBINARY_GAME_CANVAS() {
        if (!NullAllBinaryGameCanvas.staticSet_NULL_ALLBINARY_GAME_CANVAS) {
            NullAllBinaryGameCanvas.staticSet_NULL_ALLBINARY_GAME_CANVAS = true;
            NullAllBinaryGameCanvas.NULL_ALLBINARY_GAME_CANVAS = new NullAllBinaryGameCanvas();
        }
        return NullAllBinaryGameCanvas.NULL_ALLBINARY_GAME_CANVAS;
    }

    public NullAllBinaryGameCanvas() {
        base();
    }
    

    public virtual AllBinaryGameLayerManager getLayerManager() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void addCommand(Command cmd) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual int32 getHeight() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual int32 getWidth() {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void removeCommand(Command cmd) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void setCommandListener(CommandListener l) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

