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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.canvas.Processor
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.displayable.RepaintBehavior
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.GameKey
// import org.allbinary.game.input.GameKeyFactory
// import org.allbinary.game.input.PlatformInputMappingFactory
// import org.allbinary.game.input.event.DownGameKeyEventHandler
// import org.allbinary.game.input.event.GameKeyEvent
// import org.allbinary.game.input.event.GameKeyEventFactory
// import org.allbinary.game.input.event.GameKeyEventHandler
// import org.allbinary.game.input.event.UpGameKeyEventHandler
// import org.allbinary.game.input.mapping.InputToGameKeyMapping
// import org.allbinary.graphics.PointFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory
// import org.allbinary.graphics.form.FormPaintable
// import org.allbinary.graphics.form.FormTypeFactory
// import org.allbinary.graphics.form.PaintableForm
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory
// import org.allbinary.graphics.form.item.CommandTextItemArrayFactory
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.graphics.form.item.validation.AllCommandsVisitor
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.BasicArrayListD

public class GameCommandCanvas : MyCanvas, MenuListener, DisplayChangeEventListener, UpdateMyFontInterface, GameKeyEventSourceInterface, EventListenerInterface {
    private const int32 id = 0;
    private Processor repaintProcessor;
    public GameInputStrings gameInputStrings;
    public BasicColor foregroundBasicColor;
    public BasicColor backgroundBasicColor;
    public InputToGameKeyMapping inputToGameKeyMapping;
    public GameKeyFactory gameKeyFactory;
    private GameKeyEventFactory gameKeyEventFactory;
    private DownGameKeyEventHandler downGameKeyEventHandler;
    private UpGameKeyEventHandler upGameKeyEventHandler;
    public RepaintBehavior repaintBehavior;
    public MyFontProcessor updateMyFontProcessor;
    public MyFontProcessor myFontProcessor;
    public int32 foregroundColor;
    public int32 backgroundColor;
    private BasicMenuInputProcessor menuInputProcessor;
    private Paintable menuPaintable;
    private PaintableForm menuForm;
    private bool isSingleKeyRepeatableProcessing;
    public int32 fontHeight;

    // Java field initializers run after the base constructor
    private void initFieldsGameCommandCanvas() {
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this);
    this.gameInputStrings = GameInputStrings.getInstance();
    
    
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuPaintable = NullPaintable.getInstance();
    this.menuForm = PaintableForm.getNullPaintableForm();
    this.isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
    this.fontHeight = 0;
    }
    

    public GameCommandCanvas(CommandListener cmdListener, string name, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(name, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST);
        this.initFieldsGameCommandCanvas();
        this.repaintBehavior = RepaintBehavior.getInstance();
        this.foregroundBasicColor = foregroundBasicColor;
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundColor = this.foregroundBasicColor.intValue();
        this.backgroundColor = this.backgroundBasicColor.intValue();
        this.initCommands(cmdListener);
        if (cmdListener != NullCommandListener.NULL_COMMAND_LISTENER) {
            {
                this.initMenu();
                this.repaintProcessor.process();
            } /* catch (Exception e): a thrown Java exception stops the program */
        }
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        {
            Font font = graphics.getFont();
            this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeight = font.getHeight();
            Rectangle rectangle = this.createRectangle(this.menuForm.size());
            this.menuForm.init(rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM);
            this.update();
        } /* catch (Exception e): a thrown Java exception stops the program */
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public override void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public virtual void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    public virtual void initMenu() {
        ScrollSelectionForm form = this.createForm();
        this.menuForm = form;
        if (form != ScrollSelectionFormNoneFactory.getInstance()) {
            this.setMenuInputProcessor(new ImmediateCommandFormInputProcessor(new BasicArrayListD(), -1, this, form));
            this.menuPaintable = new FormPaintable(form);
        }
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    public virtual ScrollSelectionForm createForm() {
        ABCustomItem[] items = new CommandTextItemArrayFactory(new AllCommandsVisitor()).getInstance3(this.getCommandStack(), this.backgroundBasicColor, this.foregroundBasicColor);
        Rectangle rectangle = this.createRectangle(items.length);
        return CommandCurrentSelectionFormFactory.getInstance8(StringUtil.getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, this.backgroundBasicColor, this.foregroundBasicColor);
    }
    

    public virtual Rectangle createRectangle(int32 size) {
        int32 height = size * this.fontHeight;
        int32 startY = (this.displayInfo.getLastHeight() * 2 / 3) - height;
        PointFactory pointFactory = PointFactory.getInstance();
        Rectangle rectangle = new Rectangle(pointFactory.createXY(30, startY), this.displayInfo.getLastWidth() - 30, startY);
        return rectangle;
    }
    

    public virtual void open() {
        this.logUtil.putF(this.commonStrings.START, this, "open");
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    public virtual void close() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler.getInstance().removeListener(this);
    }
    

    public virtual void update() {
        this.repaintProcessor.process();
    }
    

    public override int32 getSourceId() {
        return GameCommandCanvas.id;
    }
    

    public override void keyPressed(int32 keyCode) {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    public override void keyReleased(int32 keyCode) {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    public override void keyRepeated(int32 keyCode) {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    public override void keyPressedByDevice(int32 keyCode, int32 deviceId) {
        this.logUtil.putF(new StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
        this.addGameKeyEvent(keyCode, 0, false);
    }
    

    public override void keyReleasedByDevice(int32 keyCode, int32 deviceId) {
        this.removeGameKeyEvent(keyCode, deviceId, false);
    }
    

    public override void keyRepeatedByDevice(int32 keyCode, int32 deviceId) {
        if (this.isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, deviceId, true);
        }
    }
    

    private void addGameKeyEvent(int32 keyCode, int32 deviceId, bool repeated) {
        {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.gameKeyFactory.NONE) {
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private void removeGameKeyEvent(int32 keyCode, int32 deviceId, bool repeated) {
        {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.gameKeyFactory.NONE) {
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        this.menuPaintable.paint(graphics);
        this.repaintBehavior.repaint(this);
    }
    

    private void setMenuInputProcessor(BasicMenuInputProcessor menuInputProcessor) {
        this.menuInputProcessor = menuInputProcessor;
    }
    

    public virtual BasicMenuInputProcessor getMenuInputProcessor() {
        return this.menuInputProcessor;
    }
}

