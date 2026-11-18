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
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Item
// import org.allbinary.J2MEUtil
// import org.allbinary.animation.Animation
// import org.allbinary.animation.IndexedAnimationBehavior
// import org.allbinary.animation.special.SpecialAnimation
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.BaseGameStatistics
// import org.allbinary.canvas.CustomGameMenuUtil
// import org.allbinary.canvas.FullScreenUtil
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.canvas.RunnableCanvas
// import org.allbinary.game.GameAdState
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFactory
// import org.allbinary.game.configuration.feature.InputFeatureFactory
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.init.BasicBuildGameInitializerFactory
// import org.allbinary.game.init.GameInitializationUtil
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
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.SWTUtil
// import org.allbinary.game.midlet.DemoGameMidlet
// import org.allbinary.game.score.HighScoreCommands
// import org.allbinary.game.score.HighScores
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.game.score.HighScoresHelper
// import org.allbinary.game.score.HighScoresPaintable
// import org.allbinary.game.score.NullHighScoresSingletonFactory
// import org.allbinary.game.state.GameState
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.graphics.Rectangle
// import org.allbinary.graphics.ResizableListenerHandler
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.event.DisplayChangeEvent
// import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler
// import org.allbinary.graphics.displayable.event.DisplayChangeEventListener
// import org.allbinary.graphics.form.FormType
// import org.allbinary.graphics.form.FormTypeFactory
// import org.allbinary.graphics.form.ScrollSelectionForm
// import org.allbinary.graphics.opengles.CurrentDisplayableFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureFactory
// import org.allbinary.graphics.opengles.OpenGLFeatureUtil
// import org.allbinary.graphics.opengles.OpenGLThreadUtil
// import org.allbinary.graphics.paint.InitUpdatePaintable
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.PaintableInterface
// import org.allbinary.graphics.paint.StatePaintable
// import org.allbinary.graphics.paint.StatePaintableFactory
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory
// import org.allbinary.logic.system.security.licensing.LockableFeature
// import org.allbinary.logic.system.security.licensing.LockableFeatureFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.media.audio.AllBinaryMediaManager
// import org.allbinary.media.audio.EarlySoundsFactory
// import org.allbinary.string.CommonSeps
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class StartCanvas : RunnableCanvas, GameCanvasRunnableInterface, MenuListener, DisplayChangeEventListener, RunnableInterface, PaintableInterface, ItemStateListener, GameStateCompositeInterface, GameKeyEventSourceInterface, EventListenerInterface, Runnable {
    private const int32 id = 0;
    private const string BOT_GAME_STATS = "Bot Game Statistics: ";
    public BasicColorFactory basicColorFactory;
    public Features features;
    public OpenGLFeatureFactory openGLFeatureFactory;
    public MyCommandsFactory myCommandsFactory;
    public GameAdStateFactory gameAdStateFactory;
    public GameStateFactory gameStateFactory;
    public GameInputStrings gameInputStrings;
    public FormUtil formUtil;
    private StatePaintable basicGameDemoPaintable;
    private SpecialAnimation specialAnimationInterface;
    public Animation paintedSpecialAnimationInterface;
    private FullScreenUtil fullScreenUtil;
    private HighScoresHelper highScoresHelper;
    private HighScoresPaintable realHighScoresPaintable;
    private Paintable highScoresPaintable;
    private int32 state;
    private TimeDelayHelper timeDelayHelper;
    private HighScoresFactoryInterface highScoresFactoryInterface;
    private BasicMenuInputProcessor menuInputProcessor;
    private ScrollSelectionForm menuForm;
    private BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface;
    private bool initialized;
    private Paintable defaultPaintableInterface;
    private PaintableInterface paintableInterface;
    private InitUpdatePaintable overlayPaintable;
    private int32 tempWait;
    private InputToGameKeyMapping inputToGameKeyMapping;
    public GameRunnable gameRunnable;
    private PaintableInterface progressPaintable;
    private bool isSingleKeyRepeatableProcessing;
    private GameKey NONE;
    private GameKeyEventFactory gameKeyEventFactory;
    private string SET_STATE;
    private BaseGameStatistics baseGameStatistics;

    // Java field initializers run after the base constructor
    private void initFieldsStartCanvas() {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.features = Features.getInstance();
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
    this.myCommandsFactory = MyCommandsFactory.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.gameInputStrings = GameInputStrings.getInstance();
    this.formUtil = FormUtil.getInstance();
    this.basicGameDemoPaintable = StatePaintableFactory.getInstance();
    this.specialAnimationInterface = SpecialAnimation.getInstance();
    this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance();
    this.fullScreenUtil = FullScreenUtil.getInstance();
    this.highScoresHelper = new HighScoresHelper();
    this.realHighScoresPaintable = new HighScoresPaintable();
    this.highScoresPaintable = NullPaintable.getInstance();
    this.state = 0;
    this.timeDelayHelper = new TimeDelayHelper(6000);
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm();
    
    this.initialized = false;
    this.defaultPaintableInterface = NullPaintable.getInstance();
    this.paintableInterface = NullPaintable.getInstance();
    
    this.tempWait = NullWaitGameRunnable.getInstance().WAIT;
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.gameRunnable = NullWaitGameRunnable.getInstance();
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance();
    this.isSingleKeyRepeatableProcessing = this.features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.SET_STATE = "setState";
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
    }
    

    public StartCanvas(AbeClientInformationInterface abeClientInformation, CommandListener commandListener, HighScoresFactoryInterface highScoresFactoryInterface, Paintable paintable, InitUpdatePaintable overlayPaintable, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface, bool isContinue) {
        base(commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true);
        this.initFieldsStartCanvas();
        this.setWait(NullWaitGameRunnable.getInstance().WAIT);
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil.getInstance().initDemo(abeClientInformation, this, gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler.getInstance().fireEvent(false);
        this.overlayPaintable = overlayPaintable;
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.setDefaultPaintableInterface(paintable);
        this.setPaintableInterface(this.getDefaultPaintableInterface());
        if (isContinue) {
            this.addCommand(GameCommandsFactory.getInstance().CONTINUE_COMMAND);
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(GameFeatureFactory.getInstance().SOUND)) {
            this.mediaInit();
        }
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    public override void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        {
            ScrollSelectionForm scrollSelectionForm = this.getMenuForm();
            if (scrollSelectionForm != null) {
                FormType formType = FormTypeFactory.getInstance().getFormType();
                Rectangle rectangle = this.formUtil.createFormRectangle();
                scrollSelectionForm.init(rectangle, formType);
            }
            this.overlayPaintable.init();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual JObject[] getCustomCommands() {
        GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        if (J2MEUtil.isHTML()) {
            JObject[] commandArray = new JObject[] {gameCommandsFactory.START_COMMAND, HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT};
            return commandArray;
        } else {
            BasicArrayList commandList = new BasicArrayListD();
            commandList.add(gameCommandsFactory.START_COMMAND);
            InApplicationPurchaseFactory inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance();
            if (inApplicationPurchaseFactory.isEnabled()) {
                BasicArrayList list = LockableFeatureFactory.getInstance().getList();
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(((LockableFeature) list.@get(0)))) {
                    commandList.add(gameCommandsFactory.BUY_COMMAND);
                }
            }
            commandList.add(HighScoreCommands.getInstance().DISPLAY);
            {
                bool isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
                if (SWTUtil.isSWT) {
                    commandList.add(GameInputMappingCanvas.DISPLAY);
                } else if (!isOverScan) {
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS);
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM);
                    commandList.add(GameInputMappingCanvas.DISPLAY);
                }
            } /* catch (Exception e): a thrown Java exception stops the program */
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT);
            JObject[] commandArray = commandList.toArray();
            return commandArray;
        }
    }
    

    public override void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        JObject[] commandArray = this.getCustomCommands();
        int32 size = commandArray.length;
        for (int32 index = 0; index < size; index++) {
            this.addCommand(((Command) commandArray[index]));
        }
        CustomGameMenuUtil.add(this);
        this.setCommandListener(cmdListener);
    }
    

    public virtual void initPostPaint() {
    }
    

    public virtual void mediaInit() {
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance());
    }
    

    public override void itemStateChanged(Item item) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    public virtual void initMenu() {
        this.close();
        this.open();
    }
    

    public virtual void open() {
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor());
    }
    

    public virtual void close() {
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor());
    }
    

    public override int32 getSourceId() {
        return StartCanvas.id;
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
        this.addGameKeyEvent(keyCode, false);
    }
    

    public override void keyReleasedByDevice(int32 keyCode, int32 deviceId) {
        this.removeGameKeyEvent(keyCode, false);
    }
    

    public override void keyRepeatedByDevice(int32 keyCode, int32 deviceId) {
        if (this.isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, true);
        }
    }
    

    private void addGameKeyEvent(int32 keyCode, bool repeated) {
        {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.NONE) {
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private void removeGameKeyEvent(int32 keyCode, bool repeated) {
        {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.NONE) {
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void pause() {
        this.close();
        this.setPaused(true);
    }
    

    public override void unPause() {
        this.open();
        this.setPaused(false);
    }
    

    public override bool isPausable() {
        if (CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()) {
            return true;
        } else {
            return false;
        }
    }
    

    public virtual bool isGameOver() {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), this, "isGameOver");
        return false;
    }
    

    public virtual void setLoadStateHashtable(ABHashtable hashtable) {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable");
    }
    

    public virtual ABHashtable getLoadStateHashtable() {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    public virtual ABHashtable getCurrentStateHashtable() {
        this.logUtil.putF("Trying to save the AI lol", this, "getCurrentStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    public virtual void setHighScoreSubmitted(bool isNotUsed) {
    }
    

    public override void paint(Graphics graphics) {
        this.paintableInterface.paint(graphics);
        this.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0);
        this.highScoresPaintable.paint(graphics);
        this.getBasicGameDemoPaintable().paint(graphics);
        this.overlayPaintable.paint(graphics);
        this.progressPaintable.paint(graphics);
    }
    

    public override void paintThreed(Graphics graphics) {
        this.paintableInterface.paintThreed(graphics);
        this.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
    

    public virtual void processGameOver() {
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver");
    }
    

    public virtual void demoStateChange() {
        int32 newState = this.state + 1;
        if (newState > 2) {
            newState = 0;
        } else if (newState == 2) {
            if (!this.highScoresHelper.isAnyHighScores()) {
                newState = 0;
            } else {
                HighScores highScores = this.highScoresHelper.getNextHighScores();
                if (highScores == NullHighScoresSingletonFactory.getInstance()) {
                    newState = 0;
                } else {
                    this.getRealHighScoresPaintable().setHighScores(highScores);
                }
            }
        }
        this.setState(JNumber.box(newState));
        this.updateDemoState();
    }
    

    public virtual void updateDemoState() {
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(this.state).toString(), this, this.SET_STATE);
        this.getBasicGameDemoPaintable().setState(this.state);
        if (this.state == 0) {
            this.highScoresPaintable = NullPaintable.getInstance();
            this.paintedSpecialAnimationInterface = this.getSpecialAnimationInterface();
            this.getSpecialAnimationInterface().reset();
        } else if (this.state == 1) {
            this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance();
        } else if (this.state == 2) {
            this.highScoresPaintable = this.getRealHighScoresPaintable();
        }
        GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processPageAdState();
    }
    

    public virtual int32 getNextRandom() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual AllBinaryGameLayerManager createGameLayerManager(int32 randomValue) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual GameCanvasRunnableInterface createRunnable(int32 randomLevel) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void createCanvas() {
        this.highScoresPaintable = NullPaintable.getInstance();
        this.getNextRandom();
    }
    

    public virtual void start() {
    }
    

    public virtual void preDemoProcess() {
        this.overlayPaintable.update();
    }
    

    public override void process() {
        this.getMenuInputProcessor().processInputList();
        this.preDemoProcess();
        if (this.state == 0) {
            IndexedAnimationBehavior indexedAnimationBehavior = ((IndexedAnimationBehavior) this.getSpecialAnimationInterface().getAnimationBehavior());
            if (indexedAnimationBehavior.loopIndex < 1) {
                this.timeDelayHelper.setStartTimeTNT();
            }
            
        }
    }
    

    public virtual void startDemoGame() {
    }
    

    public virtual void processGame() {
        this.gameRunnable.run();
        this.specialAnimationInterface.nextFrame();
        this.process();
    }
    

    public override void run() {
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
        {
            ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Demo Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                progressCanvas.end();
            } else {
                progressCanvas.addNormalPortion(50, "Demo Thread Running");
            }
            this.fullScreenUtil.initOnRun(this, this.getCustomCommandListener());
            this.initMenu();
            this.initPostPaint();
            this.updateDemoState();
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                OpenGLThreadUtil.getInstance().onResume();
            }
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            } else {
                while (this.isRunning()) {
                    this.loopTimeHelper.setStartTimeTNT();
                    this.processGame();
                    this.processLoopSleep();
                }
                this.end();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
        this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
    }
    

    public override void setRunning(bool running) {
        base.setRunning(running);
        {
            if ((this.features.isDefault(this.openGLFeatureFactory.OPENGL) || J2MEUtil.isHTML()) && !running) {
                CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
                currentDisplayableFactory.clearRunnable();
                this.end();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void end() {
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        this.baseGameStatistics.add(new StringMaker().append(StartCanvas.BOT_GAME_STATS).append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString());
        this.baseGameStatistics.init();
        if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
            progressCanvas.start();
        }
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN);
        this.close();
        DisplayChangeEventHandler.getInstance().removeListener(this);
    }
    

    public override void setGameState(GameState gameState) {
    }
    

    public override GameState getGameState() {
        return this.gameStateFactory.PLAYING_GAME_STATE;
    }
    

    public virtual int32 getState() {
        return this.state;
    }
    

    public virtual void setState(int32 state) {
        this.state = state;
    }
    

    public virtual bool isHighScoreSubmitted() {
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted");
        return false;
    }
    

    public virtual HighScoresPaintable getRealHighScoresPaintable() {
        return this.realHighScoresPaintable;
    }
    

    public virtual void setSpecialAnimationInterface(SpecialAnimation specialAnimationInterface) {
        specialAnimationInterface.setFrame(0);
        this.specialAnimationInterface = specialAnimationInterface;
    }
    

    public virtual SpecialAnimation getSpecialAnimationInterface() {
        return this.specialAnimationInterface;
    }
    

    public virtual void setPaintableInterface(PaintableInterface paintableInterface) {
        this.paintableInterface = paintableInterface;
    }
    

    public virtual PaintableInterface getPaintableInterface() {
        return this.paintableInterface;
    }
    

    public virtual void setDefaultPaintableInterface(Paintable defaultPaintableInterface) {
        this.defaultPaintableInterface = defaultPaintableInterface;
    }
    

    public virtual Paintable getDefaultPaintableInterface() {
        return this.defaultPaintableInterface;
    }
    

    public virtual HighScoresFactoryInterface getHighScoresFactoryInterface() {
        return this.highScoresFactoryInterface;
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
    

    public virtual bool isInitialized() {
        return this.initialized;
    }
    

    public virtual Paintable getOverlayPaintable() {
        return this.overlayPaintable;
    }
    

    public virtual void setBasicGameDemoPaintable(StatePaintable basicGameDemoPaintable) {
        this.basicGameDemoPaintable = basicGameDemoPaintable;
    }
    

    public virtual StatePaintable getBasicGameDemoPaintable() {
        return this.basicGameDemoPaintable;
    }
    

    public virtual void setTempWait(int32 tempWait) {
        this.tempWait = tempWait;
    }
    

    public virtual int32 getTempWait() {
        return this.tempWait;
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
    

    public virtual BasicBuildGameInitializerFactory getGameInitializationInterfaceFactoryInterface() {
        return this.gameInitializationInterfaceFactoryInterface;
    }
    

    public virtual string getTitle() {
        return base.getTitle();
    }
    

    public override bool isPaused() {
        return base.isPaused();
    }
    

    public override int32 getType() {
        return base.getType();
    }
}

