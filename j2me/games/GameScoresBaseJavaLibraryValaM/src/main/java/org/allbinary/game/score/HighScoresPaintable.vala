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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.Anchor
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorChangeEvent
// import org.allbinary.graphics.color.ColorChangeListener
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.util.BasicArrayList

public class HighScoresPaintable : Paintable, ColorChangeListener, UpdateMyFontInterface, EventListenerInterface {
    private DisplayInfoSingleton displayInfoSingleton;
    private MyFontProcessor myFontProcessor;
    private BasicColor basicColor;
    private HighScores highScores;
    private int32 anchor;
    private int32 charHeight;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoresPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.highScores = NullHighScoresSingletonFactory.getInstance();
    this.anchor = Anchor.TOP_LEFT;
    this.charHeight = 0;
    }
    

    public HighScoresPaintable() {
        base();
        this.initFieldsHighScoresPaintable();
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ColorChangeEvent colorChangeEvent = ((ColorChangeEvent) eventObject);
        this.basicColor = colorChangeEvent.getBasicColorP();
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        int32 width = this.displayInfoSingleton.getLastWidth();
        int32 height = this.displayInfoSingleton.getLastHeight();
        graphics.setColor(this.getBasicColorP().intValue());
        string heading = this.highScores.getHeading();
        int32 topScoresWidth = (graphics.getFont().stringWidth(heading) >> 1);
        int32 charHeight = this.charHeight;
        graphics.drawString(heading, (width >> 1) - topScoresWidth, charHeight, this.anchor);
        graphics.drawString(this.highScores.getColumnOneHeading(), 10, charHeight * 3, this.anchor);
        string columnTwoHeading = this.highScores.getColumnTwoHeading();
        int32 columnTwoHeadingWidth = graphics.getFont().stringWidth(columnTwoHeading);
        graphics.drawString(columnTwoHeading, width - 10 - columnTwoHeadingWidth, charHeight * 3, this.anchor);
        int32 index = 4;
        int32 largestSecondColumnWidth = columnTwoHeadingWidth;
        BasicArrayList list = this.highScores.getList();
        int32 size = list.size();
        int32 vectorIndex = 0;
        HighScore highScore = null;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            highScore = ((HighScore) list.objectArray[vectorIndex]);
            int32 nextScoreWidth = graphics.getFont().stringWidth(highScore.getScoreString());
            if (nextScoreWidth > largestSecondColumnWidth) {
                largestSecondColumnWidth = nextScoreWidth;
            }
            vectorIndex++;
        }
        vectorIndex = 0;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            highScore = ((HighScore) list.objectArray[vectorIndex]);
            graphics.drawString(highScore.getName(), 10, charHeight * index, this.anchor);
            graphics.drawString(highScore.getScoreString(), width - 10 - largestSecondColumnWidth, charHeight * index, this.anchor);
            index++;
            vectorIndex++;
        }
    }
    

    public override void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    public virtual BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    public virtual void setHighScores(HighScores highScores) {
        this.highScores = highScores;
    }
}

