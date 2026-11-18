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
// import javax.microedition.lcdui.ChoiceGroup
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Item
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.AndroidUtil
// import org.allbinary.J2MEUtil
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.BaseGameStatistics
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.canvas.Processor
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.debug.DebugFactory
// import org.allbinary.debug.NoDebug
// import org.allbinary.game.GameAdState
// import org.allbinary.game.GameInfo
// import org.allbinary.game.GameStrings
// import org.allbinary.game.GameTypeFactory
// import org.allbinary.game.Intermission
// import org.allbinary.game.IntermissionCompositeInterface
// import org.allbinary.game.IntermissionEnableListenerInterface
// import org.allbinary.game.IntermissionInterface
// import org.allbinary.game.PlayerTypesFactory
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.InGameFeatures
// import org.allbinary.game.configuration.InGameOptionsForm
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.event.GameInitializedEvent
// import org.allbinary.game.configuration.event.GameInitializedEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.game.configuration.feature.GameFeatureUtil
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.configuration.feature.SensorFeatureFactory
// import org.allbinary.game.configuration.feature.TouchFeatureFactory
// import org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.init.GameInitializationUtil
// import org.allbinary.game.input.GameInputStrings
// import org.allbinary.game.input.InputProcessor
// import org.allbinary.game.input.NoPlayerGameInput
// import org.allbinary.game.input.PlayerGameInput
// import org.allbinary.game.input.event.GameKeyEventHandler
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.game.paint.ColorFillBasePaintable
// import org.allbinary.game.paint.ColorFillPaintableFactory
// import org.allbinary.game.resource.ResourceLoadingLevel
// import org.allbinary.game.resource.ResourceLoadingLevelFactory
// import org.allbinary.game.score.HighScore
// import org.allbinary.game.score.HighScoresHelperBaseInterface
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresPaintable
// import org.allbinary.game.score.NullHighScoresSingletonFactory
// import org.allbinary.game.score.displayable.HighScoreTextBox
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.graphics.GraphicsStrings
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.ScreenCapture
// import org.allbinary.graphics.ScreenCaptureFactory
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.BasicColorSetUtil
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.DisplayInfoSingleton
// import org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory
// import org.allbinary.graphics.form.FormPaintable
// import org.allbinary.graphics.form.FormType
// import org.allbinary.graphics.form.FormTypeFactory
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory
// import org.allbinary.graphics.form.item.CommandTextItemArrayFactory
// import org.allbinary.graphics.form.item.ABCustomItem
// import org.allbinary.graphics.opengles.CurrentDisplayableFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.graphics.opengles.OpenGLThreadUtil
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.graphics.paint.NullInitUpdatePaintable
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.image.opengles.OpenGLImageSpecificFactory
// import org.allbinary.input.gyro.SensorGameUpdateProcessor
// import org.allbinary.input.gyro.SingleSensorGameUpdateProcessor
// import org.allbinary.input.motion.button.BaseTouchInput
// import org.allbinary.input.motion.button.NoButtonsTouchInputFactory
// import org.allbinary.input.motion.button.TouchButtonFactory
// import org.allbinary.input.motion.button.TouchButtonsPaintableFactory
// import org.allbinary.input.motion.button.TouchScreenFactory
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.media.audio.AllBinaryMediaManager
// import org.allbinary.media.audio.PlayerQueue
// import org.allbinary.media.audio.PrimaryPlayerQueueFactory
// import org.allbinary.media.audio.SecondaryPlayerQueueFactory
// import org.allbinary.media.audio.SelectSound
// import org.allbinary.string.CommonSeps
// import org.allbinary.string.CommonStrings
// import org.allbinary.thread.SecondaryThreadPool
// import org.allbinary.time.GameTickTimeDelayHelper
// import org.allbinary.time.GameTickTimeDelayHelperFactory
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD
// import org.allbinary.util.BasicArrayListUtil

public class AllBinaryGameCanvas : RunnableCanvas, AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, IntermissionCompositeInterface, IntermissionEnableListenerInterface, PopupMenuInterface, DisplayChangeEventListener, UpdateMyFontInterface, DisplayableInterface, RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface, GameKeyEventSourceInterface, EventListenerInterface, Runnable {
    private const int32 id = 0;
    public const int32 TYPE = 2;
    public BasicColorFactory basicColorFactory;
    public BasicColorSetUtil basicSetColorUtil;
    public TouchFeatureFactory touchFeatureFactory;
    public OpenGLFeatureFactory openGLFeatureFactory;
    public TouchButtonFactory touchButtonFactory;
    public GameAdStateFactory gameAdStateFactory;
    public GameStrings gameStrings;
    public GameInputStrings gameInputStrings;
    public GameStateFactory gameStateFactory;
    private GameTickTimeDelayHelper gameTickTimeDelayHelper;
    private GameTickDisplayInfoSingleton gameTickDisplayInfoSingleton;
    public GameCanvasRunnable gameRunnable;
    public GameCanvasPauseRunnable gamePauseRunnable;
    public FormUtil formUtil;
    public MyFormUtil myFormUtil;
    private MyFontProcessor updateMyFontProcessor;
    private MyFontProcessor myFontProcessor;
    public Paintable gameSpecificPaintable;
    private SensorGameUpdateProcessor sensorGameUpdateProcessor;
    public EndGameInfo endGameInfo;
    private IntermissionInterface startIntermissionInterface;
    private IntermissionInterface endLevelIntermissionInterface;
    public AllBinaryGameLayerManager gameLayerManager;
    private GameState gameState;
    private bool gameOver;
    private bool initialized;
    private TimeDelayHelper gameStateTimeHelper;
    public HighScoresHelperBaseInterface highScoresHelper;
    private bool highScoreSubmitted;
    private HighScoresPaintable realHighScoresPaintable;
    private Paintable highScoresPaintable;
    private BasicArrayList localPlayerGameInputList;
    private bool isCheating;
    private ABHashtable hashtable;
    private bool isSingleKeyRepeatableProcessing;
    private BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface;
    private Paintable touchButtonsPaintable;
    public Paintable touchPaintable;
    private PlayerGameInput cheatProcessor;
    private Processor gameInputProcessor;
    private Processor endGameProcessor;
    private Processor realEndGameProcessor;
    private Processor startIntermissionProcessor;
    private Processor realStartIntermissionProcessor;
    private Paintable endGamePaintable;
    private Paintable endGameStatePaintable;
    public Paintable nonBotPaintable;
    private Paintable intermissionPaintable;
    private InitUpdatePaintable startIntermissionPaintable;
    private Processor mainStateProcessor;
    private Processor processGameProcessor;
    private HighScoresFactoryInterface highScoresFactoryInterface;
    private int32 startLevel;
    private BasicMenuInputProcessor mainMenuInputProcessor;
    private BasicMenuInputProcessor popupMenuInputProcessor;
    private BasicMenuInputProcessor menuInputProcessor;
    private ScrollSelectionForm menuForm;
    private Paintable formPaintable;
    private Paintable openMenuPaintable;
    private Paintable menuPaintable;
    private BaseTouchInput currentTouchInputFactory;
    public ColorFillBasePaintable colorFillPaintable;
    private BaseGameStatistics baseGameStatistics;
    private PlayerQueue primaryPlayerQueue;
    private PlayerQueue secondaryPlayerQueue;
    public string BUILD_GAME;
    public GameTypeFactory gameTypeFactory;
    public ScreenCapture screenCapture;
    private BasicMotionGesturesHandler basicMotionGesturesHandler;
    private GameKeyEventHandler gameKeyEventHandler;
    private DemoGameBehavior gameBehavior;
    private BaseMenuBehavior menuBehavior;
    private PaintableInterface progressPaintable;
    public int32 fontHeightP;
    private DemoPaintableInterface gameCanvasStartListener;
    private InputProcessor rawGameInputProcessor;
    private InputProcessor rawInputProcessor;
    private InputProcessor inputProcessor;
    private int64 YIELD_SLEEP;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryGameCanvas() {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.touchFeatureFactory = TouchFeatureFactory.getInstance();
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
    this.touchButtonFactory = TouchButtonFactory.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStrings = GameStrings.getInstance();
    this.gameInputStrings = GameInputStrings.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance();
    this.gameRunnable = new GameCanvasRunnable(this);
    this.gamePauseRunnable = new GameCanvasPauseRunnable(this);
    this.formUtil = FormUtil.getInstance();
    this.myFormUtil = MyFormUtil.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.gameSpecificPaintable = NullPaintable.getInstance();
    this.sensorGameUpdateProcessor = new SingleSensorGameUpdateProcessor();
    this.endGameInfo = new EndGameInfo();
    this.startIntermissionInterface = new Intermission();
    this.endLevelIntermissionInterface = new Intermission();
    this.gameLayerManager = AllBinaryGameLayerManager.getNullInstance();
    this.gameState = this.gameStateFactory.NO_GAME_STATE;
    this.gameOver = false;
    this.initialized = false;
    this.gameStateTimeHelper = new TimeDelayHelper(0);
    
    this.highScoreSubmitted = false;
    this.realHighScoresPaintable = new HighScoresPaintable();
    this.highScoresPaintable = NullPaintable.getInstance();
    this.localPlayerGameInputList = new BasicArrayListD();
    this.isCheating = false;
    this.hashtable = this.stdUtil.NULL_TABLE;
    this.isSingleKeyRepeatableProcessing = false;
    this.gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
    this.touchButtonsPaintable = NullPaintable.getInstance();
    this.touchPaintable = NullPaintable.getInstance();
    this.cheatProcessor = NoPlayerGameInput.getInstance();
    this.gameInputProcessor = Processor.getInstance();
    this.endGameProcessor = Processor.getInstance();
    this.realEndGameProcessor = Processor.getInstance();
    this.startIntermissionProcessor = Processor.getInstance();
    this.realStartIntermissionProcessor = Processor.getInstance();
    this.endGamePaintable = NullPaintable.getInstance();
    this.endGameStatePaintable = NullPaintable.getInstance();
    this.nonBotPaintable = NullPaintable.getInstance();
    this.intermissionPaintable = NullPaintable.getInstance();
    this.startIntermissionPaintable = NullInitUpdatePaintable.getInstance();
    this.mainStateProcessor = Processor.getInstance();
    this.processGameProcessor = Processor.getInstance();
    
    this.startLevel = 0;
    this.mainMenuInputProcessor = NoMenuInputProcessor.getInstance();
    this.popupMenuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm();
    this.formPaintable = NullPaintable.getInstance();
    this.openMenuPaintable = NullPaintable.getInstance();
    this.menuPaintable = NullPaintable.getInstance();
    this.currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance();
    this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(this.basicColorFactory.BLACK, true);
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
    this.primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance();
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance();
    this.BUILD_GAME = "buildGame";
    this.gameTypeFactory = GameTypeFactory.getInstance();
    this.screenCapture = ScreenCaptureFactory.getInstance();
    this.basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance();
    this.gameKeyEventHandler = GameKeyEventHandler.getInstance();
    this.gameBehavior = null;
    this.menuBehavior = null;
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance();
    this.fontHeightP = 0;
    this.gameCanvasStartListener = NullDemoPaintable.NULL_DEMO_PAINTABLE;
    this.rawGameInputProcessor = new GameCanvasInputProcessor(this);
    this.rawInputProcessor = new FormInputProcessor(this);
    this.inputProcessor = this.getRawGameInputProcessor();
    this.YIELD_SLEEP = 100;
    }
    

    public AllBinaryGameCanvas(CommandListener commandListener, AllBinaryGameLayerManager gameLayerManager, HighScoresFactoryInterface highScoresFactoryInterface, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface, bool buffered) {
        base(commandListener, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true);
        this.initFieldsAllBinaryGameCanvas();
        this.highScoresHelper = highScoresFactoryInterface.createHighScoresHelper();
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        this.init(gameLayerManager, buffered);
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        if (this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.BOT || this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.NONE) {
            this.gameBehavior = DemoGameBehavior.getInstance();
            this.menuBehavior = BaseMenuBehavior.getInstance();
        } else {
            this.gameBehavior = BaseGameBehavior.getInstance();
            this.menuBehavior = this.getInGameMenuBehavior();
        }
        this.initPopupMenu();
        this.initMenu();
        this.initSpecialPaint();
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        {
            Font font = graphics.getFont();
            this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeightP = font.getHeight();
            this.myFormUtil.updateMeasurement(graphics);
            Rectangle popupMenuRectangle = this.myFormUtil.getPopupMenuRectangle();
            BasicPopupMenuPaintable basicPopupMenuPaintable = (((BasicPopupMenuPaintable) this.getOpenMenuPaintable()));
            basicPopupMenuPaintable.init(popupMenuRectangle);
            if (this.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance()) {
                PopupMenuInputProcessor popupMenuInputProcessor = (((PopupMenuInputProcessor) this.getPopupMenuInputProcessor()));
                popupMenuInputProcessor.init(popupMenuRectangle);
            }
            this.myFontProcessor = MyFontProcessor.getInstance();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual BaseMenuBehavior getInGameMenuBehavior() {
        return InGameMenuBehavior.getInstance();
    }
    

    public override void setCurrentThread() {
        if (J2MEUtil.isHTML()) {
            base.setCurrentThreadFake();
        } else {
            base.setCurrentThread();
        }
    }
    

    public override void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        {
            this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.myFontProcessor = this.updateMyFontProcessor;
            this.menuBehavior.onDisplayChangeEvent(this, displayChangeEvent);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void updateMenuFromEvent(DisplayChangeEvent displayChangeEvent) {
        FormType formType = FormTypeFactory.getInstance().getFormType();
        Rectangle rectangle = this.formUtil.createFormRectangle();
        this.menuForm.init(rectangle, formType);
        if (this.currentTouchInputFactory != NoButtonsTouchInputFactory.getInstance()) {
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList());
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public override void processSleep() {
        base.processSleep();
        if (AllBinaryMediaManager.update()) {
            if (!this.primaryPlayerQueue.process()) {
                this.secondaryPlayerQueue.process();
            }
        }
        if (this.menuInputProcessor.processInputList() != -1) {
            this.runnableCanvasRefreshHelper.process();
        }
    }
    

    public virtual void initPopupMenu() {
        if (this.popupMenuInputProcessor == NoMenuInputProcessor.getInstance()) {
            Features features = Features.getInstance();
            Rectangle popupMenuRectangle = this.myFormUtil.getPopupMenuRectangle();
            if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
                this.setOpenMenuPaintable(new BasicPopupMenuPaintable(popupMenuRectangle, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
                this.setPopupMenuInputProcessor(new PopupMenuInputProcessor(new BasicArrayListD(), -1, this, popupMenuRectangle));
            }
        } else {
        }
    }
    

    public virtual void initMenu() {
        {
            this.menuBehavior.initMenu(this);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void initMenu2() {
        this.closeMenu();
        FormType formType = FormTypeFactory.getInstance().getFormType();
        GameLimitedCommandTextItemArrayFactory gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance();
        CommandTextItemArrayFactory commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        ABCustomItem[] items = commandTextItemArrayFactory.getInstance3(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        Rectangle rectangle = this.formUtil.createFormRectangle();
        this.setMenuForm(CommandCurrentSelectionFormFactory.getInstance8(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
        ScrollSelectionForm scrollSelectionForm = this.getMenuForm();
        Features features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
            this.mainMenuInputProcessor = new PopupCommandFormInputProcessor(new BasicArrayListD(), -1, this, scrollSelectionForm, ((PopupMenuInputProcessor) this.getPopupMenuInputProcessor()));
        } else {
        }
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
        if (scrollSelectionForm != ScrollSelectionFormNoneFactory.getInstance()) {
            this.setFormPaintable(new FormPaintable(scrollSelectionForm));
        } else {
        }
        this.closeMenu();
    }
    

    public virtual void updateMenu() {
        {
            this.menuBehavior.updateMenu(this);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void updateMenu2() {
        ScrollSelectionForm scrollSelectionForm = this.getMenuForm();
        scrollSelectionForm.deleteAll();
        GameLimitedCommandTextItemArrayFactory gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance();
        CommandTextItemArrayFactory commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        ABCustomItem[] items = commandTextItemArrayFactory.getInstance3(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        int32 size = items.length;
        for (int32 index = 0; index < size; index++) {
            scrollSelectionForm.append(items[index]);
        }
        FormType formType = FormTypeFactory.getInstance().getFormType();
        Rectangle rectangle = this.formUtil.createFormRectangle();
        scrollSelectionForm.init(rectangle, formType);
    }
    

    public override void pause() {
        this.gameBehavior.pause(this);
        this.closeMenu();
        base.pause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance());
        this.tsUtil.gc();
    }
    

    public override void unPause() {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.UNPAUSE);
        this.closeMenu();
        this.tsUtil.gc();
        base.unPause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance());
        this.gameBehavior.unPause(this);
    }
    

    public override bool isPausable() {
        if (CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual void popupMenu() {
        this.menuBehavior.popupMenu(this);
    }
    

    public virtual void popupMenu2() {
        this.primaryPlayerQueue.add(SelectSound.getInstance());
        this.setMenuPaintable(this.getFormPaintable());
        this.setMenuInputProcessor(this.mainMenuInputProcessor);
        this.basicMotionGesturesHandler.addListenerInterface(this.mainMenuInputProcessor);
        this.gameKeyEventHandler.addListener(this.mainMenuInputProcessor);
    }
    

    public virtual void toggleMenu() {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.TOGGLE_MENU);
        if (this.getMenuPaintable() == this.getOpenMenuPaintable()) {
            this.pause();
            this.updateMenu();
            this.popupMenu();
        } else if (this.getMenuPaintable() == this.getFormPaintable()) {
            this.primaryPlayerQueue.add(SelectSound.getInstance());
            this.unPause();
        }
    }
    

    public virtual void closeMenu() {
        this.menuBehavior.closeMenu(this);
    }
    

    public virtual void closeMenu2() {
        this.setMenuPaintable(this.getOpenMenuPaintable());
        this.basicMotionGesturesHandler.removeListener(this.mainMenuInputProcessor);
        this.gameKeyEventHandler.removeListener(this.mainMenuInputProcessor);
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
    }
    

    public virtual void open() {
        this.basicMotionGesturesHandler.addListenerInterface(this.menuInputProcessor);
        this.gameKeyEventHandler.addListener(this.menuInputProcessor);
    }
    

    public virtual void close() {
        this.basicMotionGesturesHandler.removeListener(this.menuInputProcessor);
        this.gameKeyEventHandler.removeListener(this.menuInputProcessor);
        this.primaryPlayerQueue.clear();
        this.secondaryPlayerQueue.clear();
    }
    

    public virtual void processorInit() {
        this.setMainStateProcessor(Processor.getInstance());
        this.setProcessGameProcessorInit();
    }
    

    public virtual void setProcessGameProcessorInit() {
        this.setProcessGameProcessor(new GameProcessor(this));
    }
    

    public virtual void initSpecialPaint() {
        this.menuBehavior.initSpecialPaint(this);
    }
    

    private void init(AllBinaryGameLayerManager gameLayerManager, bool buffered) {
        this.gameStateTimeHelper.setStartTimeTNT();
        this.setHighScoreSubmitted(false);
        this.setLayerManager(gameLayerManager);
        if (!buffered) {
            string BUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX";
            this.logUtil.putF(BUFF_MESSAGE, this, this.commonStrings.CONSTRUCTOR);
        } else {
            JSystem.fatal(new JException("Exception", "Buffering is disabled"));
        }
        this.setGameInputProcessor(Processor.getInstance());
        Features features = Features.getInstance();
        if (features.isFeature(GameFeatureFactory.getInstance().CHEATING)) {
            this.isCheating = true;
            this.cheatProcessor = new CheatGameInputProcessor(this);
            this.gameKeyEventHandler.addListener(this.cheatProcessor);
        } else {
            this.isCheating = false;
            this.cheatProcessor = NoPlayerGameInput.getInstance();
        }
        this.realEndGameProcessor = new EndGameProcessor(this);
        this.setEndGameProcessor(Processor.getInstance());
        this.realStartIntermissionProcessor = new StartIntermissionProcessor(this);
        this.startIntermissionProcessor = Processor.getInstance();
        this.setEndGameStatePaintable(new EndGamePaintable(this));
        this.setEndGamePaintable(NullPaintable.getInstance());
        this.setIntermissionPaintable(NullPaintable.getInstance());
        this.getStartIntermissionInterface().setListener(this);
    }
    

    public virtual void notifyIntermission(bool enable) {
        if (enable) {
            this.startIntermissionProcessor = this.realStartIntermissionProcessor;
        } else {
            this.startIntermissionProcessor = Processor.getInstance();
        }
        if (enable) {
            this.setIntermissionPaintable(this.getStartIntermissionPaintable());
        } else {
            this.setIntermissionPaintable(NullPaintable.getInstance());
        }
    }
    

    public virtual void mediaInit() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    public virtual void initConfigurable(AbeClientInformationInterface abeClientInformation) {
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(50, "Setting Configurables");
        GameInitializationUtil.getInstance().initGame(abeClientInformation, this, this.gameInitializationInterfaceFactoryInterface);
        GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        ChangedGameFeatureListener changedGameFeatureListener = ChangedGameFeatureListener.getInstance();
        if (changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)) {
            Features features = Features.getInstance();
            this.logUtil.putF(new StringMaker().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), this, "initConfigurable");
            this.mediaInit();
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND);
        }
        SensorFeatureFactory sensorFeatureFactory = SensorFeatureFactory.getInstance();
        if (changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION);
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS);
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS);
        }
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        this.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME);
    }
    

    public virtual void initApp(AbeClientInformationInterface abeClientInformation) {
        this.initConfigurable(abeClientInformation);
        this.processorInit();
        this.sensorGameUpdateProcessor.process(this.gameLayerManager);
        this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager);
        this.initTouch();
    }
    

    public virtual void initTouch() {
        GameInitializedEvent gameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
        this.touchButtonFactory.defaultList();
        this.updateTouch();
        this.postInitTouch();
    }
    

    public virtual void updateCurrentTouchInputFactory(BaseTouchInput nextTouchInput) {
        if (nextTouchInput != this.currentTouchInputFactory) {
            this.currentTouchInputFactory = nextTouchInput;
            PreLogUtil.put(this.currentTouchInputFactory.toString(), this, this.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY);
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList());
        }
    }
    

    public virtual void updateTouch() {
        this.gameBehavior.updateTouch(this);
    }
    

    public virtual void updateTouch2() {
        Features features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            if (this.gameLayerManager.getGameInfo().getCurrentLevel() - this.getStartLevel() == 1) {
                this.setTouchPaintableP(NullPaintable.getInstance());
            }
        }
    }
    

    public virtual void postInitTouch() {
        this.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance1(this.gameLayerManager.getForegroundBasicColor()));
        this.updateScreenButtonPaintable();
    }
    

    public override void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommands();
        this.setCommandListener(cmdListener);
    }
    

    public virtual void addCommands() {
        GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        MyCommandsFactory myCommandsFactory = MyCommandsFactory.getInstance();
        if (DebugFactory.getInstance() != NoDebug.getInstance()) {
            this.addCommand(gameCommandsFactory.START_TRACE);
        }
        this.addCommand(gameCommandsFactory.RESTART_COMMAND);
        this.addCommand(myCommandsFactory.PAUSE_COMMAND);
        this.addCommand(gameCommandsFactory.QUIT_COMMAND);
        bool isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
        if (J2MEUtil.isHTML()) {
        } else if (SWTUtil.isSWT) {
        } else if (!isOverScan) {
            if (TouchScreenFactory.getInstance().isTouch() && new InGameFeatures().isAny()) {
                this.addCommand(InGameOptionsForm.DISPLAY);
            }
            this.addCommand(gameCommandsFactory.SAVE);
            this.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM);
        }
    }
    

    public override void itemStateChanged(Item item) {
        {
            string itemLabel = item.getLabel();
            this.logUtil.putF(new StringMaker().append(this.commonLabels.ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((item is ChoiceGroup)) {
                GameFeatureUtil gameFeatureUtil = GameFeatureUtil.getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup(((ChoiceGroup) item));
                } else {
                    gameFeatureUtil.updateMultiple(((ChoiceGroup) item));
                }
            }
            this.sensorGameUpdateProcessor.process(this.gameLayerManager);
            this.updateTouch();
            this.updateScreenButtonPaintable();
            this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void updateScreenButtonPaintable() {
        this.gameBehavior.updateScreenButtonPaintable(this);
    }
    

    public virtual void updateScreenButtonPaintable2() {
        Features features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
            this.setStartLevel(this.gameLayerManager.getGameInfo().getCurrentLevel());
        } else if (features.isFeature(this.touchFeatureFactory.SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
        } else if (features.isFeature(this.touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(NullPaintable.getInstance());
        } else {
            this.setTouchPaintableP(NullPaintable.getInstance());
        }
    }
    

    public virtual AllBinaryGameLayerManager getLayerManager() {
        return this.gameLayerManager;
    }
    

    public virtual void setLayerManager(AllBinaryGameLayerManager layerManager) {
        this.gameLayerManager = layerManager;
    }
    

    public virtual bool isGameOver() {
        return this.gameOver;
    }
    

    public virtual void setGameOver(bool gameOver) {
        this.gameOver = gameOver;
    }
    

    public virtual void processGameOver() {
        PreLogUtil.put(this.commonStrings.START, this, this.gameStrings.SET_GAME_OVER);
        this.setGameOver(true);
        this.removePauseCommand();
        this.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
        this.setEndGamePaintable(this.getEndGameStatePaintable());
    }
    

    public virtual bool isHighScoreSubmitted() {
        return this.highScoreSubmitted;
    }
    

    public virtual void setHighScoreSubmitted(bool highScoreSubmitted) {
        this.highScoreSubmitted = highScoreSubmitted;
        if (highScoreSubmitted) {
            this.highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance());
        }
        this.logUtil.putF(new StringMaker().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).toString(), this, "setHighScoreSubmitted");
    }
    

    public override GameState getGameState() {
        return this.gameState;
    }
    

    public override void setGameState(GameState gameState) {
        this.logUtil.putF(new StringMaker().append(this.gameStrings.GAME_STATE).append(this.stringUtil.toString1(gameState)).toString(), this, this.gameStrings.SET_GAME_STATE);
        this.gameState = gameState;
        this.gameStateTimeHelper.setStartTimeTNT();
        this.updateEndGameProcessor();
        this.updateGameKeyEventProcessor();
        this.gameBehavior.setGameState(this);
    }
    

    public virtual void updateGameState() {
        GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processAdState(this.gameState, this.gameLayerManager.getGameInfo().getGameType());
        if (this.gameState != this.gameStateFactory.PLAYING_GAME_STATE) {
            gameAdState.processPageAdState();
        }
    }
    

    private void updateGameKeyEventProcessor() {
        if (this.getGameState() != this.gameStateFactory.PLAYING_GAME_STATE || this.isCheating) {
        } else {
        }
    }
    

    public virtual void removeAllGameKeyInputListenersOnBuild() {
        this.removeAllGameKeyInputListeners();
    }
    

    public virtual void removeAllGameKeyInputListeners() {
        this.gameBehavior.removeAllGameKeyInputListeners(this);
    }
    

    public virtual void removeAllGameKeyInputListeners2() {
        this.logUtil.putF("Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners");
        for (int32 index = this.localPlayerGameInputList.size() - 1; index >= 0; index--) {
            PlayerGameInput playerGameInput = ((PlayerGameInput) this.localPlayerGameInputList.@get(index));
            this.removeKeyInputListener(playerGameInput);
            playerGameInput.removeNonAIInputGameKeyEvents();
        }
    }
    

    public virtual void removeKeyInputListener(PlayerGameInput playerGameInput) {
        this.gameKeyEventHandler.removeListener(playerGameInput);
    }
    

    public virtual void updateEndGameProcessor() {
        this.gameBehavior.updateEndGameProcessor(this);
    }
    

    public virtual void updateEndGameProcessor2() {
        if (this.getGameState() == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE || this.getGameState() == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
            this.setEndGameProcessor(this.realEndGameProcessor);
        } else {
            this.setEndGameProcessor(Processor.getInstance());
        }
    }
    

    public virtual void buildGameInit(bool isPortion) {
    }
    

    public virtual void cleanupGame() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLEANUP);
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(10, "Cleaning Up");
        this.primaryPlayerQueue.clear();
        this.secondaryPlayerQueue.clear();
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear();
    }
    

    public virtual void loadResourceLoadingLevel(ResourceLoadingLevel resourceLoadingLevel) {
        GameInitializedEvent gameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
    }
    

    public virtual void loadResources(int32 level) {
        GameInitializedEvent gameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setLevel(level);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
    }
    

    public virtual void updateColor() {
    }
    

    public virtual void buildGame(int32 portion) {
        this.screenCapture.endRecording();
        this.screenCapture.startRecording();
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        Features features = Features.getInstance();
        progressCanvas.addNormalPortion(portion, "Generic Build");
        this.removeAllGameKeyInputListenersOnBuild();
        this.updateTouch();
        progressCanvas.addNormalPortion(portion, "High Scores");
        this.highScoresFactoryInterface.fetchHighScores(this.gameLayerManager.getGameInfo(), this.highScoresHelper);
        this.setHighScoresPaintable(NullPaintable.getInstance());
        progressCanvas.addNormalPortion(portion, "Finishing.");
        this.getEndGameInfoP().update(this.getLayerManager().getGameInfo(), this);
        this.isSingleKeyRepeatableProcessing = features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
        this.setGameOver(false);
        progressCanvas.addNormalPortion(portion, "Finishing..");
        this.updateColor();
        this.getStartIntermissionPaintable().update();
        if (!this.isRunningInAnotherThread()) {
            return;
        }
        progressCanvas.addNormalPortion(portion, "Finishing...");
        if (this.isMainCanvas() || !this.isInitialized()) {
            if (features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                if (this.getCustomCommandListener() != null) {
                    progressCanvas.end();
                }
            } else {
                progressCanvas.end();
            }
            this.setInitialized(true);
        }
        if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
            this.logUtil.putF("Show Game Paintable in DemoCanvas Thread", this, this.BUILD_GAME);
            this.gameCanvasStartListener.showGamePaintable();
        } else {
            this.logUtil.putF("No GameCanvasStartListener", this, this.BUILD_GAME);
        }
        this.colorFillPaintable.setBasicColorP(this.gameLayerManager.getBackgroundBasicColor());
        this.gameBehavior.buildGame(this);
    }
    

    public virtual void buildGame2() {
        PreLogUtil.put(new StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(this.localPlayerGameInputList.size()).toString(), this, this.BUILD_GAME);
        PlayerGameInput playerGameInput = null;
        for (int32 index = this.localPlayerGameInputList.size() - 1; index >= 0; index--) {
            playerGameInput = ((PlayerGameInput) this.localPlayerGameInputList.@get(index));
            PreLogUtil.put(new StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), this, this.BUILD_GAME);
            playerGameInput.removeNonAIInputGameKeyEvents();
            this.addKeyInputListener(playerGameInput);
        }
    }
    

    public virtual void addKeyInputListener(PlayerGameInput playerGameInput) {
        GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId());
    }
    

    public virtual void setGameCanvasStartListener(DemoPaintableInterface gameCanvasStartListener) {
        this.gameCanvasStartListener = gameCanvasStartListener;
    }
    

    public virtual void loadState() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.LOAD);
        ABHashtable hashtable = this.getLoadStateHashtable();
        if (hashtable != null && hashtable.size() > 0) {
            string levelAsString = JString.unbox(hashtable.@get(((JObject) GameInfo.LEVEL_NAME)));
            int32 level = JString.ofString(levelAsString).intValue();
            GameInfo gameInfo = this.gameLayerManager.getGameInfo();
            gameInfo.setCurrentLevel(level);
        }
    }
    

    public virtual ABHashtable getLoadStateHashtable() {
        this.logUtil.putF(new StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString1(this.hashtable)).toString(), this, "getLoadStateHashtable");
        return this.hashtable;
    }
    

    public virtual void setLoadStateHashtable(ABHashtable hashtable) {
        this.logUtil.putF(new StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString1(hashtable)).toString(), this, "setLoadStateHashtable");
        this.hashtable = hashtable;
    }
    

    public virtual ABHashtable getCurrentStateHashtable() {
        ABHashtable hashtable = this.stdUtil.createHashtable();
        int32 level = this.gameLayerManager.getGameInfo().getCurrentLevel();
        hashtable.put(JString.box(GameInfo.LEVEL_NAME.toString()), JString.box((level).to_string()));
        this.logUtil.putF(new StringMaker().append("End: ").append(this.stringUtil.toString1(hashtable)).toString(), this, "getCurrentStateHashtable");
        return hashtable;
    }
    

    public virtual void paintGameOver(Graphics graphics) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    public override void draw(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.gameLayerManager.getForegroundBasicColor());
        this.gameSpecificPaintable.paint(graphics);
    }
    

    public virtual void clear(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
    }
    

    public override void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        this.baseGameStatistics.nextRefresh();
        this.draw(graphics);
        this.menuPaintable.paint(graphics);
        this.progressPaintable.paint(graphics);
    }
    

    public override void paintThreed(Graphics graphics) {
    }
    

    public virtual void processEndLevelIntermissionGameState() {
    }
    

    public virtual void nonBotPaint(Graphics graphics) {
        this.endGamePaintable.paint(graphics);
        this.intermissionPaintable.paint(graphics);
        this.paintIntermission(graphics);
        this.touchPaintable.paint(graphics);
    }
    

    public virtual void paintIntermission(Graphics graphics) {
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
        this.inputProcessor.keyPressedByDevice(keyCode, deviceId);
    }
    

    public override void keyRepeatedByDevice(int32 keyCode, int32 deviceId) {
        if (this.isSingleKeyRepeatableProcessing) {
            this.inputProcessor.keyPressedByDevice(keyCode, deviceId);
        }
    }
    

    public override void keyReleasedByDevice(int32 keyCode, int32 deviceId) {
        this.inputProcessor.keyReleasedByDevice(this, keyCode, deviceId);
    }
    

    public virtual void handleRawKey(int32 keyCode, int32 deviceId, bool repeated) {
    }
    

    public virtual int32 endProgress(bool isProgress) {
        int32 portion = 30;
        if (isProgress && this.isMainCanvas()) {
            MyCommandsFactory myCommandsFactory = MyCommandsFactory.getInstance();
            ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.start();
            this.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
            portion = 4;
        }
        return portion;
    }
    

    public virtual void processPlayingGame() {
        this.cheatProcessor.update();
        this.sensorGameUpdateProcessor.getInputSensor().update();
        this.gameInputProcessor.process();
        this.gameLayerManager.process();
        this.startIntermissionProcessor.process();
    }
    

    public virtual void threadInit() {
    }
    

    public virtual void processGame() {
        base.process();
        if (AllBinaryMediaManager.update()) {
            if (!this.primaryPlayerQueue.process()) {
                this.secondaryPlayerQueue.process();
            }
        }
        this.mainStateProcessor.process();
        this.menuInputProcessor.processInputList();
        this.endGameProcessor.process();
        this.baseGameStatistics.nextFrame();
    }
    

    public virtual void notifyDonePainting() {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
    

    public virtual void shouldWait() {
        Features features = Features.getInstance();
        if (AndroidUtil.isAndroid()) {
        } else if (features.isFeature(this.openGLFeatureFactory.OPENGL_2D)) {
        } else {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL)) {
                OpenGLImageSpecificFactory openGLImageSpecificFactory = OpenGLImageSpecificFactory.getInstance();
                while (openGLImageSpecificFactory.updating) {
                    Thread.sleep(this.YIELD_SLEEP);
                }
            }
        }
    }
    

    public override void run() {
        {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Game Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
                Thread.sleep(this.YIELD_SLEEP);
            }
            this.shouldWait();
            this.threadInit();
            if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
                Thread.sleep(this.YIELD_SLEEP);
            }
            this.open();
            GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.init();
            gameAdState.setGameIsReady(true);
            this.gameBehavior.run(this);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void run2() {
        Features features = Features.getInstance();
        if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), this, this.commonStrings.RUN);
            }
            if (J2MEUtil.isHTML()) {
                this.logUtil.putF(GraphicsStrings.getInstance().HTML, this, this.commonStrings.RUN);
            }
            CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(this.gameRunnable);
            currentDisplayableFactory.setDisplayable(this);
            OpenGLThreadUtil.getInstance().onResume();
        } else if (features.isDefault(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) {
            this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), this, this.commonStrings.RUN);
            OpenGLThreadUtil.getInstance().onResume();
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        } else {
            this.logUtil.putF("this thread", this, this.commonStrings.RUN);
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        }
    }
    

    public virtual void run3() {
        this.loopTimeHelper.setStartTime(this.gameTickTimeDelayHelper.setStartTime());
        this.gameTickDisplayInfoSingleton.update();
        this.processGame();
        this.processLoopSleep();
    }
    

    public override void setRunning(bool running) {
        base.setRunning(running);
        {
            Features features = Features.getInstance();
            if (running) {
            } else {
                if (features.isDefault(this.openGLFeatureFactory.OPENGL) || SWTUtil.isSWT) {
                    if (this.gameLayerManager.getGameInfo().getGameType() != this.gameTypeFactory.BOT) {
                        CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
                        currentDisplayableFactory.clearRunnable();
                    }
                    this.end();
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void end() {
        this.screenCapture.endRecording();
        this.baseGameStatistics.add(new StringMaker().append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString());
        this.baseGameStatistics.init();
        this.gameKeyEventHandler.removeListener(this.cheatProcessor);
        this.close();
        this.removeAllGameKeyInputListeners();
        this.endGameThread();
    }
    

    public virtual void endGameThread() {
        DisplayChangeEventHandler.getInstance().removeListener(this);
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear();
        GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.notPlayingAdState();
    }
    

    public virtual HighScore createHighScore(int64 score) {
        GameInfo gameInfo = this.gameLayerManager.getGameInfo();
        return new HighScore(0, "NONE", new GameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score);
    }
    

    public virtual void setHighScore(AbeClientInformationInterface abeClientInformation, string name, int64 score, bool autoSubmit, bool isLast) {
        this.gameBehavior.setHighScore(abeClientInformation, this, name, score, autoSubmit, isLast);
    }
    

    public virtual void setHighScore2(AbeClientInformationInterface abeClientInformation, string name, int64 score, bool autoSubmit, bool isLast) {
        HighScore highScore = this.createHighScore(score);
        HighScoreTextBox textBox = new HighScoreTextBox(this.highScoresFactoryInterface, this.highScoresHelper, abeClientInformation, this.gameLayerManager.getGameInfo(), this.getCustomCommandListener(), name, highScore, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        if (isLast) {
            this.getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox);
        }
        if (autoSubmit) {
            SecondaryThreadPool.getInstance().runTask(new SaveHighScoreRunnable(isLast, textBox));
        }
    }
    

    public virtual TimeDelayHelper getGameStateTimeHelper() {
        return this.gameStateTimeHelper;
    }
    

    public virtual void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    public virtual bool isInitialized() {
        return this.initialized;
    }
    

    public override int32 getSourceId() {
        return AllBinaryGameCanvas.id;
    }
    

    public virtual void setProgressPaintable(PaintableInterface paintable) {
        this.progressPaintable = paintable;
    }
    

    public virtual IntermissionInterface getStartIntermissionInterface() {
        return this.startIntermissionInterface;
    }
    

    public virtual IntermissionInterface getEndLevelIntermissionInterface() {
        return this.endLevelIntermissionInterface;
    }
    

    public virtual void setTouchPaintableP(Paintable paintable) {
        this.touchPaintable = paintable;
    }
    

    public virtual Paintable getTouchPaintableP() {
        return this.touchPaintable;
    }
    

    public virtual void setEndGamePaintable(Paintable endGamePaintable) {
        this.endGamePaintable = endGamePaintable;
    }
    

    public virtual Paintable getEndGamePaintable() {
        return this.endGamePaintable;
    }
    

    public virtual void setIntermissionPaintable(Paintable intermissionPaintable) {
        this.intermissionPaintable = intermissionPaintable;
    }
    

    public virtual Paintable getIntermissionPaintable() {
        return this.intermissionPaintable;
    }
    

    public virtual EndGameInfo getEndGameInfoP() {
        return this.endGameInfo;
    }
    

    public virtual void setHighScoresPaintable(Paintable highScoresPaintable) {
        this.highScoresPaintable = highScoresPaintable;
    }
    

    public virtual Paintable getHighScoresPaintable() {
        return this.highScoresPaintable;
    }
    

    public virtual HighScoresPaintable getRealHighScoresPaintable() {
        return this.realHighScoresPaintable;
    }
    

    public virtual void clearPlayerGameInputList() {
        PlayerGameInput playerGameInput = null;
        for (int32 index = this.localPlayerGameInputList.size() - 1; index >= 0; index--) {
            playerGameInput = ((PlayerGameInput) this.localPlayerGameInputList.@get(index));
            this.gameKeyEventHandler.removeListener(playerGameInput);
        }
        this.localPlayerGameInputList.clear();
    }
    

    public virtual void addPlayerGameInput(PlayerGameInput playerGameInput) {
        this.localPlayerGameInputList.add(playerGameInput);
    }
    

    public virtual void setMenuInputProcessor(BasicMenuInputProcessor menuInputProcessor) {
        this.menuInputProcessor = menuInputProcessor;
    }
    

    public virtual BasicMenuInputProcessor getMenuInputProcessor() {
        return this.menuInputProcessor;
    }
    

    public virtual ScrollSelectionForm getMenuForm() {
        return this.menuForm;
    }
    

    public virtual void setMenuForm(ScrollSelectionForm menuForm) {
        this.menuForm = menuForm;
    }
    

    public virtual int32 getStartLevel() {
        return this.startLevel;
    }
    

    public virtual void setStartLevel(int32 startLevel) {
        this.startLevel = startLevel;
    }
    

    public virtual void setTouchButtonsPaintable(Paintable touchButtonsPaintable) {
        this.touchButtonsPaintable = touchButtonsPaintable;
    }
    

    public virtual Paintable getTouchButtonsPaintable() {
        return this.touchButtonsPaintable;
    }
    

    public virtual void setGameInputProcessor(Processor gameInputProcessor) {
        this.gameInputProcessor = gameInputProcessor;
    }
    

    public virtual Processor getGameInputProcessor() {
        return this.gameInputProcessor;
    }
    

    public virtual void setEndGameProcessor(Processor endGameProcessor) {
        this.endGameProcessor = endGameProcessor;
    }
    

    public virtual Processor getEndGameProcessor() {
        return this.endGameProcessor;
    }
    

    public virtual void setEndGameStatePaintable(Paintable endGameStatePaintable) {
        this.endGameStatePaintable = endGameStatePaintable;
    }
    

    public virtual Paintable getEndGameStatePaintable() {
        return this.endGameStatePaintable;
    }
    

    public virtual void setNonBotPaintableP(Paintable nonBotPaintable) {
        this.nonBotPaintable = nonBotPaintable;
    }
    

    public virtual Paintable getNonBotPaintableP() {
        return this.nonBotPaintable;
    }
    

    public virtual void setStartIntermissionPaintable(InitUpdatePaintable startIntermissionPaintable) {
        this.startIntermissionPaintable = startIntermissionPaintable;
    }
    

    public virtual InitUpdatePaintable getStartIntermissionPaintable() {
        return this.startIntermissionPaintable;
    }
    

    public virtual void setMainStateProcessor(Processor mainStateProcessor) {
        this.mainStateProcessor = mainStateProcessor;
    }
    

    public virtual Processor getMainStateProcessor() {
        return this.mainStateProcessor;
    }
    

    public virtual void setProcessGameProcessor(Processor processGameProcessor) {
        this.processGameProcessor = processGameProcessor;
    }
    

    public virtual Processor getProcessGameProcessor() {
        return this.processGameProcessor;
    }
    

    public virtual void setOpenMenuPaintable(Paintable openMenuPaintable) {
        this.openMenuPaintable = openMenuPaintable;
    }
    

    public virtual Paintable getOpenMenuPaintable() {
        return this.openMenuPaintable;
    }
    

    public virtual void setPopupMenuInputProcessor(BasicMenuInputProcessor popupMenuInputProcessor) {
        this.popupMenuInputProcessor = popupMenuInputProcessor;
    }
    

    public virtual BasicMenuInputProcessor getPopupMenuInputProcessor() {
        return this.popupMenuInputProcessor;
    }
    

    public virtual SensorGameUpdateProcessor getSensorGameUpdateProcessor() {
        return this.sensorGameUpdateProcessor;
    }
    

    public virtual InputProcessor getRawGameInputProcessor() {
        return this.rawGameInputProcessor;
    }
    

    public virtual InputProcessor getRawInputProcessor() {
        return this.rawInputProcessor;
    }
    

    public virtual void setInputProcessor(InputProcessor inputProcessor) {
        this.inputProcessor = inputProcessor;
    }
    

    public virtual InputProcessor getInputProcessor() {
        return this.inputProcessor;
    }
    

    public virtual void setMenuPaintable(Paintable menuPaintable) {
        this.menuPaintable = menuPaintable;
    }
    

    public virtual Paintable getMenuPaintable() {
        return this.menuPaintable;
    }
    

    private void setFormPaintable(Paintable formPaintable) {
        this.formPaintable = formPaintable;
    }
    

    public virtual Paintable getFormPaintable() {
        return this.formPaintable;
    }
    

    public virtual void setGameSpecificPaintableP(Paintable gameSpecificPaintable) {
        this.gameSpecificPaintable = gameSpecificPaintable;
    }
    

    public virtual Paintable getGameSpecificPaintableP() {
        return this.gameSpecificPaintable;
    }
    

    public override bool isSingleThread() {
        return OpenGLFeatureUtil.getInstance().isAnyThreed() || SWTUtil.isSWT;
    }
    

    public virtual bool isRunningInAnotherThread() {
        Features features = Features.getInstance();
        OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
            return true;
        } else {
            return this.isRunning();
        }
    }
    

    public override int32 getType() {
        return AllBinaryGameCanvas.TYPE;
    }
    

    public virtual string getTitle() {
        return base.getTitle();
    }
    

    public override bool isPaused() {
        return base.isPaused();
    }
}

