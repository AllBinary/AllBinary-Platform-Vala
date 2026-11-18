/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable
// import javax.microedition.lcdui.Canvas
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.ARunnable

public class RepaintRunnable : ARunnable {
    private Canvas canvas;

    // Java field initializers run after the base constructor
    private void initFieldsRepaintRunnable() {
    
    }
    

    public RepaintRunnable(Canvas canvas) {
        base();
        this.initFieldsRepaintRunnable();
        this.canvas = canvas;
    }
    

    public override void run() {
        {
            this.canvas.repaint();
            DisplayInfoSingleton.getInstance().process();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

