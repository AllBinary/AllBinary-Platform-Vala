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
// package org.allbinary.game.score
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class HighScoresCanvasInputProcessor : PlayerGameInput {
    private HighScoresCanvas highScoresCanvas;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoresCanvasInputProcessor() {
    
    }
    

    public HighScoresCanvasInputProcessor(HighScoresCanvas highScoresCanvas) {
        base(new BasicArrayListD(), new BasicArrayListD(), -1);
        this.initFieldsHighScoresCanvasInputProcessor();
        this.highScoresCanvas = highScoresCanvas;
    }
    

    public virtual void open() {
    }
    

    public virtual void close() {
    }
    

    public override void onPressGameKeyEvent(GameKeyEvent gameKeyEvent) {
        base.onPressGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    public override void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
        base.onDownGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    public override void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
        base.onUpGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    public virtual void paint(Graphics graphics) {
    }
    

    public virtual HighScoresCanvas getHighScoresCanvas() {
        return this.highScoresCanvas;
    }
}

