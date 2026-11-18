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
// package org.allbinary.graphics.canvas.transition.progress
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.canvas.Processor
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.item.ABCustomGaugeItem
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.midlet.AllBinaryMidlet
// import org.allbinary.thread.PathFindingThreadPool
// import org.allbinary.thread.ThreadPool

public class ProgressCanvas : RunnableCanvas, PaintableInterface, UpdateMyFontInterface {
    public bool hasPainted;
    private BasicColor backgroundBasicColor;
    public Paintable GAUGE_PAINTABLE;
    private float maxValue;
    public ABCustomGaugeItem gauge;
    private string TEXT;
    private MyFontProcessor updateMyFontProcessor;
    private MyFontProcessor myFontProcessor;
    public AllBinaryMidlet allbinaryMidlet;
    private float value;
    private string text;
    private bool background;
    public PaintableInterface paintable;
    public bool inProgress;
    private Processor IN_GAME_PROCESSOR;
    public Processor inGameProcessor;
    public ProgressEndListener progressEndListener;
    private string backgroundLabel;
    private string START_BACKGROUND;
    public string ADD_PORTION;
    public string ADD_EARLY_PORTION;

    // Java field initializers run after the base constructor
    private void initFieldsProgressCanvas() {
    this.hasPainted = false;
    
    this.GAUGE_PAINTABLE = new ProgressPaintable(this);
    this.maxValue = 100.0f;
    
    this.TEXT = this.commonStrings.LOADING;
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.allbinaryMidlet = AllBinaryMidlet.getNullInstance();
    this.value = 0.0;
    this.text = this.TEXT;
    this.background = true;
    this.paintable = this.GAUGE_PAINTABLE;
    this.inProgress = false;
    this.IN_GAME_PROCESSOR = new Processor() /* Java anonymous class body: implement it as a named subclass
        this.pathFindingThreadPool = PathFindingThreadPool.getInstance();
        

        public override void process() {
            this.pathFindingThreadPool.runAPriorityTask();
        } */;
    this.inGameProcessor = Processor.getInstance();
    this.progressEndListener = ProgressEndListener.instance;
    this.backgroundLabel = "Background AI Game Loading...";
    this.START_BACKGROUND = "startBackground";
    this.ADD_PORTION = "addPortion";
    this.ADD_EARLY_PORTION = "addEarlyPortion";
    }
    

    public ProgressCanvas(string title, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(NullCommandListener.NULL_COMMAND_LISTENER, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false);
        this.initFieldsProgressCanvas();
        this.backgroundBasicColor = backgroundBasicColor;
        this.gauge = new ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, ((int32) JMath.toInt32(this.maxValue)), 0, backgroundBasicColor, foregroundBasicColor);
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        Font font = graphics.getFont();
        this.gauge.setHeight(font.getHeight() + 2);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void init(AllBinaryMidlet gameMidlet) {
        this.allbinaryMidlet = gameMidlet;
    }
    

    public virtual void update(Graphics graphics) {
    }
    

    public override void initCommands(CommandListener cmdListener) {
    }
    

    public virtual float getMaxValue() {
        return this.maxValue;
    }
    

    public virtual void start() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.START_METHOD_NAME);
        this.setBackground(true);
        this.gauge.setHeight(30);
        this.gauge.setLabel(this.commonStrings.PLEASE_WAIT);
        this.setText(this.TEXT);
        this.setValue(0);
        this.inGameProcessor = Processor.getInstance();
        this.paintable = this.GAUGE_PAINTABLE;
        this.inProgress = true;
    }
    

    public virtual void startBackground(bool background) {
        this.logUtil.putF(this.commonStrings.START, this, this.START_BACKGROUND);
        this.setBackground(background);
        this.myFontProcessor = this.updateMyFontProcessor;
        this.gauge.setLabel(this.backgroundLabel);
        this.setText(this.TEXT);
        this.setValue(0);
        this.inGameProcessor = Processor.getInstance();
        this.paintable = this.GAUGE_PAINTABLE;
    }
    

    public virtual void endActual() {
        this.allbinaryMidlet.commandAction(GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, NullCanvas.NULL_CANVAS);
        this.inProgress = false;
        this.inGame();
    }
    

    public virtual void inGame() {
        this.progressEndListener.onEndEvent();
        this.inGameProcessor = this.IN_GAME_PROCESSOR;
    }
    

    public virtual void end() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.END_METHOD_NAME);
        this.gauge.setValue(this.getMaxValue());
        this.endActual();
        this.paintable = NullPaintable.getInstance();
    }
    

    public virtual void endFromInitialLazyLoadingComplete() {
        this.progressEndListener.onEndEvent();
        this.gauge.setValue(this.getMaxValue());
        this.inGameProcessor = this.IN_GAME_PROCESSOR;
    }
    

    public virtual bool isInGame() {
        if (this.inGameProcessor == this.IN_GAME_PROCESSOR) {
            return true;
        }
        return false;
    }
    

    public virtual void endIfPaintedSinceStart() {
    }
    

    public virtual void addEarlyPortion(int32 value, string text, int32 index) {
        this.setText(new StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / ((float) (value)));
    }
    

    public virtual void addPortion(int32 value, string text, int32 index) {
        this.setText(new StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        PreLogUtil.put(this.text, this, this.ADD_PORTION);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / ((float) (value)));
    }
    

    public virtual void addNormalPortion(int32 value, string text) {
        if (this.text != text) {
            PreLogUtil.put(text, this, this.ADD_PORTION);
        }
        this.setText(text);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / ((float) (value)));
    }
    

    public virtual void setValue(int32 value) {
        this.value = ((float) (value));
        this.gauge.setValue(((float) (value)));
    }
    

    public override void paint(Graphics graphics) {
        this.paintable.paint(graphics);
    }
    

    public virtual void paint2(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.backgroundBasicColor.intValue());
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        this.gauge.paintXY(graphics, 0, 0);
        this.hasPainted = true;
    }
    

    public virtual void paintThreed(Graphics graphics) {
    }
    

    public virtual float getValue() {
        return this.value;
    }
    

    public virtual void setText(string text) {
        this.text = text;
    }
    

    public virtual string getText() {
        return this.text;
    }
    

    public virtual void setBackground(bool background) {
        this.background = background;
    }
    

    public virtual bool isBackground() {
        return this.background;
    }
}

