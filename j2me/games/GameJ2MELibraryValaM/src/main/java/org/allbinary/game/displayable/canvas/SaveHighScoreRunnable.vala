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
// import org.allbinary.game.score.displayable.HighScoreTextBox
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class SaveHighScoreRunnable : JObject, Runnable {
    private ProgressCanvas progressCanvas;
    private bool isLast;
    private HighScoreTextBox textBox;

    // Java field initializers run after the base constructor
    private void initFieldsSaveHighScoreRunnable() {
    this.progressCanvas = ProgressCanvasFactory.getInstance();
    
    
    }
    

    public SaveHighScoreRunnable(bool isLast, HighScoreTextBox textBox) {
        base();
        this.initFieldsSaveHighScoreRunnable();
        this.isLast = isLast;
        this.textBox = textBox;
    }
    

    public virtual void run() {
        LogUtil logUtil = LogUtil.getInstance();
        {
            if (this.isLast) {
                this.textBox.submit();
            } else {
                this.textBox.saveHighScore();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

