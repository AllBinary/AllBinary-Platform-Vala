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
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.input.event.GameKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEventUtil
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.util.BasicArrayList

public class HighScoresCanvasLevelChangeInputProcessor : HighScoresCanvasInputProcessor, UpdateMyFontInterface {
    private DisplayInfoSingleton displayInfoSingleton;
    private string INSTRUCTIONS;
    private MyFontProcessor myFontProcessor;
    private int32 anchor;
    private int32 fontHeight;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoresCanvasLevelChangeInputProcessor() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)";
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeight = 0;
    }
    

    public HighScoresCanvasLevelChangeInputProcessor(HighScoresCanvas highScoresCanvas) {
        base(highScoresCanvas);
        this.initFieldsHighScoresCanvasLevelChangeInputProcessor();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void open() {
        GameKeyEventHandler.getInstance().addListener(this);
    }
    

    public override void close() {
        GameKeyEventHandler.getInstance().removeListener(this);
    }
    

    public override void update() {
        BasicArrayList list = this.getGameKeyEventList();
        int32 size = list.size();
        for (int32 index = 0; index < size; index++) {
            JObject anyType = list.objectArray[index];
            int32 key = GameKeyEventUtil.getKey(anyType);
            if (key == Canvas.RIGHT) {
                this.getHighScoresCanvas().getGameInfo().nextGameLevel();
            } else if (key == Canvas.LEFT) {
                this.getHighScoresCanvas().getGameInfo().previousGameLevel();
            }
            this.getHighScoresCanvas().executeUpdate();
        }
        list.clear();
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        int32 width = this.displayInfoSingleton.getLastWidth();
        int32 topScoresWidth = (graphics.getFont().stringWidth(this.INSTRUCTIONS) >> 1);
        graphics.drawString(this.INSTRUCTIONS, (width >> 1) - topScoresWidth, this.fontHeight * 2, this.anchor);
    }
}

