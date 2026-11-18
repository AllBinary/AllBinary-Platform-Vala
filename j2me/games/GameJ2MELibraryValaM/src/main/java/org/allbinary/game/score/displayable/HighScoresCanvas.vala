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
// package org.allbinary.game.score.displayable
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import org.allbinary.game.GameInfo
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.displayable.canvas.GameCommandCanvas
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.game.score.HighScoreCommandsFactory
// import org.allbinary.game.score.HighScores
// import org.allbinary.game.score.HighScoresCanvasInputProcessor
// import org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresHelperBase
// import org.allbinary.game.score.HighScoresPaintable
// import org.allbinary.game.score.HighScoresResultsListener
// import org.allbinary.game.score.NoHighScoresFactory
// import org.allbinary.game.score.NullHighScoresSingletonFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.SimpleTextPaintable
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.SecondaryThreadPool

public class HighScoresCanvas : GameCommandCanvas, HighScoresResultsListener {
    public const string NAME = "HighScoresCanvas";
    private Paintable paintable;
    private HighScoreCommandsFactory highScoreCommandsFactory;
    private SimpleTextPaintable waitPaintable;
    private HighScoresPaintable highScoresPaintable;
    private HighScoresFactoryInterface highScoresFactoryInterface;
    public ColorFillBasePaintable colorFillPaintable;
    private HighScoresHelperBase highScoresHelper;
    private GameInfo gameInfo;
    private HighScoresCanvasInputProcessor highScoresCanvasInputProcessor;
    private Command currentCommand;
    public bool hasPainted;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoresCanvas() {
    this.paintable = NullPaintable.getInstance();
    this.highScoreCommandsFactory = HighScoreCommandsFactory.getInstance();
    this.waitPaintable = new SimpleTextPaintable(this.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().WHITE);
    
    
    
    this.highScoresHelper = new HighScoresHelperBase();
    
    
    this.currentCommand = this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0];
    this.hasPainted = false;
    }
    

    public HighScoresCanvas(CommandListener commandListener, AllBinaryGameLayerManager allBinaryGameLayerManager, GameInfo gameInfo, HighScoresPaintable paintable, HighScoresFactoryInterface highScoresFactoryInterface, HighScoresCanvasInputProcessorFactoryInterface highScoresCanvasInputProcessorFactoryInterface) {
        base(commandListener, HighScoresCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsHighScoresCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.highScoresPaintable = paintable;
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance1(this);
        this.gameInfo = gameInfo;
        this.waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        this.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
        if (this.highScoresHelper.getHighScoresArray().length == NoHighScoresFactory.getInstance().NO_HIGH_SCORES.length) {
            this.setPaintable(this.waitPaintable);
        } else {
            this.logUtil.putF("Show HighScores that are already loaded", this, this.commonStrings.CONSTRUCTOR);
            this.updateCommand(this.currentCommand);
            this.setPaintable(this.getHighScoresPaintable());
        }
        SecondaryThreadPool.getInstance().runTask(new HighScoreRunnable(this));
    }
    

    public override void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    public override void open() {
        base.open();
        this.highScoresCanvasInputProcessor.open();
    }
    

    public override void close() {
        base.close();
        this.highScoresCanvasInputProcessor.close();
    }
    

    public override void paint(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        this.paintable.paint(graphics);
        if (this.waitPaintable != this.paintable) {
            this.highScoresCanvasInputProcessor.paint(graphics);
        }
        base.paint(graphics);
        this.hasPainted = true;
    }
    

    public virtual void executeUpdate() {
        {
            this.highScoresFactoryInterface.fetchHighScores(this.getGameInfo(), this);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private HighScoresPaintable getHighScoresPaintable() {
        return this.highScoresPaintable;
    }
    

    public virtual void setHighScoresArray(HighScores[] highScoresArray) {
        {
            if (highScoresArray != null) {
                this.logUtil.putF(new StringMaker().append(this.commonStrings.START).appendint(highScoresArray.length).toString(), this, "setHighScoresArray");
            } else {
                this.logUtil.putF(this.commonStrings.START, this, "setHighScoresArray");
            }
            this.highScoresHelper.setHighScoresArray(highScoresArray);
            this.updateCommand(this.currentCommand);
            this.setPaintable(this.getHighScoresPaintable());
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void updateCommand(Command command) {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(this.stringUtil.toString1(command)).toString(), this, this.commonStrings.UPDATE);
        GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        if (this.highScoreCommandsFactory.isHighScoreCommand(command)) {
            int32 index = this.highScoreCommandsFactory.getIndex(command);
            int32 nextIndex = index + 1;
            HighScores[] highScoresArray = this.highScoresHelper.getHighScoresArray();
            if (nextIndex >= highScoresArray.length) {
                nextIndex = 0;
            }
            if (highScoresArray.length > 0) {
                this.getHighScoresPaintable().setHighScores(highScoresArray[index]);
            } else {
                this.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory.getInstance());
            }
            if (index != nextIndex) {
                this.removeAllCommands();
                this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
                this.addCommand(this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex]);
            }
        }
        this.currentCommand = command;
        this.close();
        base.initMenu();
        this.open();
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    public virtual GameInfo getGameInfo() {
        return this.gameInfo;
    }
    

    private void setPaintable(Paintable paintable) {
        this.paintable = paintable;
        this.repaintBehavior.onChangeRepaint(this);
    }
}

