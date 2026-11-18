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
// package org.allbinary.game.midlet
// import java.util.Enumeration
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Displayable
// import javax.microedition.lcdui.NullCanvas
// import javax.microedition.midlet.MIDletStateChangeException
// import org.allbinary.J2MEUtil
// import org.allbinary.TsUtil
// import org.allbinary.business.advertisement.GameAdStateFactory
// import org.allbinary.canvas.FullScreenUtil
// import org.allbinary.canvas.GameStatisticsFactory
// import org.allbinary.debug.DebugFactory
// import org.allbinary.debug.DebugInterface
// import org.allbinary.game.GameAdState
// import org.allbinary.game.GameInfo
// import org.allbinary.game.GameMode
// import org.allbinary.game.GameStrings
// import org.allbinary.game.GameTypeFactory
// import org.allbinary.game.PlayerTypesFactory
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.game.configuration.GameOptionsForm
// import org.allbinary.game.configuration.GameOptionsFormFactory
// import org.allbinary.game.configuration.InGameFeatures
// import org.allbinary.game.configuration.InGameOptionsForm
// import org.allbinary.game.configuration.InGameOptionsFormFactory
// import org.allbinary.game.configuration.LoadGameForm
// import org.allbinary.game.configuration.event.ChangedGameFeatureListener
// import org.allbinary.game.configuration.event.GameFeatureEventHandler
// import org.allbinary.game.configuration.feature.Features
// import org.allbinary.game.configuration.feature.GameFeatureFormUtil
// import org.allbinary.game.configuration.feature.MainFeatureFactory
// import org.allbinary.game.configuration.persistance.GamePersistanceSingleton
// import org.allbinary.game.configuration.persistance.KeyValuePersistance
// import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas
// import org.allbinary.game.displayable.canvas.BasicPaintablesCanvas
// import org.allbinary.game.displayable.canvas.DemoCanvas
// import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface
// import org.allbinary.game.displayable.canvas.GameEventHandlerUtil
// import org.allbinary.game.displayable.canvas.GameInputMappingCanvas
// import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas
// import org.allbinary.game.displayable.canvas.MenuListener
// import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable
// import org.allbinary.game.input.TextNotificationUtil
// import org.allbinary.game.layer.AllBinaryGameLayerManager
// import org.allbinary.game.layer.hud.event.GameNotificationEventHandler
// import org.allbinary.game.paint.help.HelpPaintable
// import org.allbinary.game.score.HighScoreCommands
// import org.allbinary.game.score.HighScoreCommandsFactory
// import org.allbinary.game.score.displayable.HighScoreTextBox
// import org.allbinary.game.score.displayable.HighScoreUtil
// import org.allbinary.game.score.displayable.HighScoresCanvas
// import org.allbinary.game.state.GameStateFactory
// import org.allbinary.graphics.ResizableListenerHandler
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas
// import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.color.ColorChangeEventHandler
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.graphics.displayable.screen.AboutCommandProcessor
// import org.allbinary.graphics.displayable.screen.AboutPaintableFactory
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.graphics.displayable.screen.WebCommandProcessor
// import org.allbinary.input.AllBinarySensorManager
// import org.allbinary.input.event.VirtualKeyboardEventHandler
// import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler
// import org.allbinary.logic.communication.log.ForcedLogUtil
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.math.SmallIntegerSingletonFactory
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.system.security.licensing.ClientInformationFactory
// import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory
// import org.allbinary.logic.system.security.licensing.LockableFeature
// import org.allbinary.logic.system.security.licensing.LockableFeatureFactory
// import org.allbinary.logic.util.event.AllBinaryEventObject
// import org.allbinary.logic.util.event.EventStrings
// import org.allbinary.media.audio.AllBinaryMediaManager
// import org.allbinary.midlet.MidletStrings
// import org.allbinary.midlet.ProgressMidlet
// import org.allbinary.thread.NullThread
// import org.allbinary.thread.ThreadFactoryUtil
// import org.allbinary.thread.ThreadUtil
// import org.allbinary.time.TimeDelayHelper
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.EnumerationUtil
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABHashtable

public class GameMidlet : ProgressMidlet, CommandListener {
    private EnumerationUtil enumerationUtil;
    public BasicColorFactory basicColorFactory;
    public Features features;
    public MidletStrings midletStrings;
    public MyCommandsFactory myCommandsFactory;
    public GameStrings gameStrings;
    public GameAdStateFactory gameAdStateFactory;
    public GameStateFactory gameStateFactory;
    public TsUtil tsUtil;
    private string DISPLAYABLE;
    private string COMMAND_NAME;
    private string NO_COMMAND;
    private string NO_DISPLAYABLE;
    private string COMMAND_ACTION;
    private string PAUSE_APP_BACKGROUND;
    private string UN_PAUSE_APP_BACKGROUND;
    private AboutCommandProcessor aboutCommandProcessor;
    private WebCommandProcessor webCommandProcessor;
    private GameMidletStateFactory gameMidletStateFactory;
    public TimeDelayHelper gameStartTimeHelper;
    private FullScreenUtil fullScreenUtil;
    private DebugInterface debugInterface;
    private GameCanvasRunnableInterface allbinaryGameCanvasRunnableInterface;
    private Thread thread;
    private CommandForm loadGameForm;
    private bool isFullScreen;
    private bool resized;
    private bool startedBefore;

    // Java field initializers run after the base constructor
    private void initFieldsGameMidlet() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.features = Features.getInstance();
    this.midletStrings = MidletStrings.getInstance();
    this.myCommandsFactory = MyCommandsFactory.getInstance();
    this.gameStrings = GameStrings.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.DISPLAYABLE = " Displayable: ";
    this.COMMAND_NAME = "command Name/Label: ";
    this.NO_COMMAND = "No Command";
    this.NO_DISPLAYABLE = "No Displayable";
    this.COMMAND_ACTION = new StringMaker().append("GameMidlet::").append(this.midletStrings.COMMAND_ACTION).toString();
    this.PAUSE_APP_BACKGROUND = "pauseAppBackground";
    this.UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground";
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance();
    this.webCommandProcessor = WebCommandProcessor.getInstance();
    this.gameMidletStateFactory = GameMidletStateFactory.getInstance();
    this.gameStartTimeHelper = new TimeDelayHelper(240);
    this.fullScreenUtil = FullScreenUtil.getInstance();
    
    this.allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
    this.thread = NullThread.NULL_THREAD;
    
    this.isFullScreen = false;
    this.resized = false;
    this.startedBefore = false;
    }
    

    public GameMidlet(ClientInformationFactory clientInformationFactory) {
        base(clientInformationFactory);
        this.initFieldsGameMidlet();
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6);
        this.loadGameForm = CommandForm.getNullCommandForm();
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.init(this);
        GameFeatureEventHandler.getInstance().addListenerInterface(ChangedGameFeatureListener.getInstance());
        GamePersistanceSingleton.getInstance().clear();
        this.debugInterface = DebugFactory.getInstance();
        this.init();
    }
    

    public virtual void init() {
    }
    

    public virtual void setDemo() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void createGame() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void mediaShutdown() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void stopAll() {
    }
    

    public override void pauseApp() {
        this.pauseAppBackground(true);
        GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().stopAll();
    }
    

    public virtual void pauseAppBackground(bool background) {
        this.logUtil.putF(this.commonStrings.START, this, this.PAUSE_APP_BACKGROUND);
        if (this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            this.allbinaryGameCanvasRunnableInterface.pause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.PAUSE_APP_BACKGROUND);
        }
        AllBinarySensorManager.getInstance().shutdown();
    }
    

    public virtual void unPauseApp() {
        this.unPauseAppBackground(true);
        GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().startAll();
    }
    

    public virtual void unPauseAppBackground(bool background) {
        this.logUtil.putF(this.commonStrings.START, this, this.UN_PAUSE_APP_BACKGROUND);
        AllBinarySensorManager.getInstance().init();
        GameCanvasRunnableInterface gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            gameCanvasRunnableInterface.unPause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.UN_PAUSE_APP_BACKGROUND);
        }
    }
    

    public override void destroyAppInRunnable(bool unconditional, bool isProgress) {
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        if (isProgress) {
            progressCanvas.start();
            this.commandAction(this.myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
        }
        this.destroyApp(unconditional);
        if (isProgress) {
            progressCanvas.end();
        }
    }
    

    public override void destroyApp(bool unconditional) {
        string METHOD_NAME = "GameMidlet::destroyApp";
        {
            PreLogUtil.put(GameStatisticsFactory.getInstance().toString(), this, METHOD_NAME);
            GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().stopAll();
            if (!this.isDestroyed()) {
                this.stopGameCanvasRunnableInterface();
                this.setGameCanvasRunnableInterface(NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
                this.mediaShutdown();
            } else {
                this.logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, METHOD_NAME);
            }
            base.destroyApp(true);
            PreLogUtil.put(this.commonStrings.END, this, METHOD_NAME);
        } /* catch (Exception e): a thrown Java exception stops the program */
        this.logUtil.putF(this.commonStrings.END, this, METHOD_NAME);
    }
    

    public override void startApp() {
        {
            GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().startAll();
            string START_APP = "startApp";
            this.logUtil.putF(this.commonStrings.START, this, START_APP);
            JObject gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
            if (gameCanvasRunnableInterface == NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
                this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                this.setDemo();
            } else {
                this.logUtil.putF("GameCanvasRunnableInterface is available", this, START_APP);
                if (gameCanvasRunnableInterface == this.getCurrentDisplayable()) {
                    this.unPauseAppBackground(false);
                } else {
                    this.logUtil.putF("GameCanvasRunnableInterface is not current displayable", this, START_APP);
                }
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void commandAction(Command command, Displayable displayable) {
        {
            string displayableAsString = this.NO_DISPLAYABLE;
            if (displayable != null) {
                displayableAsString = displayable.toString();
            }
            string label = this.NO_COMMAND;
            if (command != null) {
                label = command.getLabel();
            }
            PreLogUtil.put(new StringMaker().append(this.COMMAND_NAME).append(label).append(this.DISPLAYABLE).append(displayableAsString).toString(), this, this.COMMAND_ACTION);
            GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
            GameCanvasRunnableInterface allbinaryGameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
            JObject gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface;
            if (command == gameCommandsFactory.SHOW_GAME_CANVAS) {
                if (this.getDisplay().getCurrent() != gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.getType()) {
                    this.setDisplay(((Displayable) gameCanvasRunnableInterface));
                }
                this.unPauseAppBackground(false);
            } else if (command == gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) {
                MenuListener menuListener = ((MenuListener) displayable);
                menuListener.close();
                this.setDisplay(((Displayable) gameCanvasRunnableInterface));
                this.unPauseAppBackground(false);
            } else if (command == gameCommandsFactory.EXIT_COMMAND) {
                if (GameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size() == 0) {
                    this.exitProgress(true);
                }
                GameMidletEventHandler.getInstance().fireEvent(new DemoGameMidletEvent(this, DemoGameMidletStateFactory.getInstance().NONE));
            } else if (command == gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) {
                this.exitProgress(false);
            } else if (command == gameCommandsFactory.START_COMMAND || command == gameCommandsFactory.RESTART_COMMAND || command == gameCommandsFactory.CONTINUE_COMMAND) {
                if (this.gameMidletStateFactory.getCurrentGameState() != this.gameStateFactory.PLAYING_GAME_STATE || command == gameCommandsFactory.RESTART_COMMAND) {
                    if (this.gameStartTimeHelper.isTimeTNT()) {
                        if (command == gameCommandsFactory.START_COMMAND && this.isDemoLoading()) {
                            this.logUtil.putF("Trying to Start Game Before Loading Complete", this, this.midletStrings.COMMAND_ACTION);
                        } else {
                            this.startedBefore = true;
                            this.createGame();
                            this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.PLAYING_GAME_STATE);
                        }
                    } else {
                        this.logUtil.putF("Starting Game Too Often", this, this.midletStrings.COMMAND_ACTION);
                    }
                } else {
                    this.logUtil.putF("Already in playing state", this, this.COMMAND_ACTION);
                }
            } else if (command == gameCommandsFactory.BUY_COMMAND) {
                InApplicationPurchaseFactory inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance();
                BasicArrayList list = LockableFeatureFactory.getInstance().getList();
                LockableFeature lockableFeature = ((LockableFeature) list.@get(0));
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(lockableFeature)) {
                    inApplicationPurchaseFactory.purchase(lockableFeature);
                } else {
                    TextNotificationUtil.getInstance().fireSuccess("Already Purchased");
                }
            } else if (command == gameCommandsFactory.QUIT_COMMAND) {
                if (this.gameStartTimeHelper.isTimeTNT()) {
                    if ((displayable is HighScoreTextBox)) {
                        MenuListener menuListener = ((MenuListener) displayable);
                        menuListener.close();
                    }
                    this.stopGameCanvasRunnableInterface();
                    this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                    this.setDemo();
                }
            } else if (command == this.myCommandsFactory.RESUME_COMMAND) {
                this.unPauseAppBackground(false);
            } else if (command == this.myCommandsFactory.PAUSE_COMMAND) {
                this.pauseAppBackground(false);
            } else if (command == this.myCommandsFactory.SET_DISPLAYABLE) {
                this.pauseAppBackground(false);
                this.setDisplay(displayable);
            } else if (command == gameCommandsFactory.SET_MENU_DISPLAYABLE) {
                this.pauseAppBackground(false);
                MenuListener menuListener = ((MenuListener) displayable);
                menuListener.open();
                this.setDisplay(displayable);
            } else if (command == gameCommandsFactory.START_TRACE) {
                this.debugInterface.start();
                AllBinaryGameCanvas gameCanvas = ((AllBinaryGameCanvas) allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE);
            } else if (command == gameCommandsFactory.STOP_TRACE) {
                this.pauseAppBackground(false);
                this.debugInterface.stop();
                this.unPauseAppBackground(false);
                AllBinaryGameCanvas gameCanvas = ((AllBinaryGameCanvas) allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE);
            } else if (command == gameCommandsFactory.DEFAULT_OPTIONS) {
                Displayable tempDisplayable = displayable;
                if ((tempDisplayable is GameOptionsForm)) {
                    GameFeatureFormUtil.getInstance().setDefault(((CommandForm) tempDisplayable));
                }
            } else if (command == GameInputMappingInstructionsCanvas.DISPLAY) {
                Displayable tempDisplayable = displayable;
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    GameInputMappingCanvas gameInputMappingCanvas = ((GameInputMappingCanvas) tempDisplayable);
                    gameInputMappingCanvas.update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingInstructionsCanvas());
            } else if (HighScoreCommandsFactory.getInstance().isHighScoreCommand(command)) {
                Displayable tempDisplayable = displayable;
                if ((tempDisplayable is HighScoresCanvas)) {
                    HighScoresCanvas highScoresCanvas = ((HighScoresCanvas) tempDisplayable);
                    highScoresCanvas.updateCommand(command);
                }
            } else if (command == HighScoreCommands.getInstance().DISPLAY) {
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.createHighScoresCanvas());
            } else if (command == GameInputMappingInstructionsCanvas.CLOSE) {
                MenuListener menuListener = ((MenuListener) displayable);
                menuListener.close();
                this.commandAction(GameInputMappingCanvas.DISPLAY, NullCanvas.NULL_CANVAS);
            } else if (command == GameInputMappingCanvas.DISPLAY) {
                if (J2MEUtil.isHTML()) {
                    this.pauseAppBackground(false);
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingCanvas());
            } else if (command == GameInputMappingCanvas.DEFAULT) {
                Displayable tempDisplayable = displayable;
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    GameInputMappingCanvas gameInputMappingCanvas = ((GameInputMappingCanvas) tempDisplayable);
                    gameInputMappingCanvas.setDefault();
                }
            } else if (command == InGameOptionsForm.DISPLAY) {
                this.pauseAppBackground(false);
                ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
                progressCanvas.addNormalPortion(50, "In Game Options");
                AllBinaryGameLayerManager layerManager = this.createGameLayerManager();
                InGameOptionsFormFactory inGameOptionsFormFactory = InGameOptionsFormFactory.getInstance();
                inGameOptionsFormFactory.init(this, new InGameFeatures(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
                CommandForm inGameOptionsForm = inGameOptionsFormFactory.@get();
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm);
            } else if (command == InGameOptionsForm.DEFAULT) {
                InGameOptionsForm inGameOptionsForm = ((InGameOptionsForm) InGameOptionsFormFactory.getInstance().@get());
                GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm);
            } else if (command == gameCommandsFactory.DISPLAY_OPTIONS) {
                AllBinaryMediaManager.setMuted(true);
                this.stopAll();
                MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
                this.isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                ResizableListenerHandler.getInstance().fireEvent(true);
                this.setResized(false);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getGameOptionsForm());
            } else if (command == gameCommandsFactory.CLOSE_OPTIONS) {
                ResizableListenerHandler.getInstance().fireEvent(false);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
                StringMaker stringBuffer = new StringMaker();
                stringBuffer.append("Close isFullScreen/change: ");
                stringBuffer.appendboolean(this.isFullScreen);
                stringBuffer.appendboolean(this.fullScreenUtil.isScreenChange(this.isFullScreen));
                stringBuffer.append(" isResized: ");
                stringBuffer.appendboolean(this.isResized());
                PreLogUtil.put(stringBuffer.toString(), this, this.COMMAND_ACTION);
                if (this.isResized() || this.fullScreenUtil.isScreenChange(this.isFullScreen)) {
                    this.updateFullScreen();
                }
                AllBinaryMediaManager.setMuted(false);
            } else if (command == gameCommandsFactory.DISPLAY_LOAD_FORM) {
                this.pauseAppBackground(false);
                KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                keyValuePersistance.clear();
                keyValuePersistance.loadAll(this.abeClientInformation);
                if (this.getLoadGameForm() == CommandForm.getNullCommandForm()) {
                    AllBinaryGameLayerManager layerManager = this.createGameLayerManager();
                    this.setLoadGameForm(new LoadGameForm(this, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
                } else {
                    this.getLoadGameForm().update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getLoadGameForm());
            } else if (command == gameCommandsFactory.LOAD_FILE) {
                LoadGameForm loadGameForm = ((LoadGameForm) this.getLoadGameForm());
                int32 index = loadGameForm.getSelectedId();
                if (index != -1) {
                    KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                    this.setStartStateHashtable(keyValuePersistance.@get(index));
                    MenuListener menuListener = this.getLoadGameForm();
                    menuListener.close();
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION);
                    this.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas.NULL_CANVAS);
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION);
                }
            } else if (command == gameCommandsFactory.DELETE_FILE) {
                LoadGameForm loadGameForm = ((LoadGameForm) this.getLoadGameForm());
                int32 index = loadGameForm.getSelectedText();
                if (index != -1) {
                    KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                    keyValuePersistance.@delete(this.abeClientInformation, index);
                    keyValuePersistance.clear();
                    keyValuePersistance.loadAllSize(this.abeClientInformation, 1);
                    this.getLoadGameForm().update();
                }
            } else if (command == gameCommandsFactory.SAVE) {
                KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                this.pauseAppBackground(false);
                keyValuePersistance.save(this.abeClientInformation, this.getCurrentStateHashtable());
                this.unPauseAppBackground(false);
            } else if (command == HighScoreUtil.SUBMIT_TEXTBOX_COMMAND) {
                this.logUtil.putF("Submitted Score", this, this.COMMAND_ACTION);
                if ((displayable is HighScoreTextBox)) {
                    HighScoreTextBox highScoreTextBox = ((HighScoreTextBox) displayable);
                    highScoreTextBox.submitted = true;
                }
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
            } else if (command == gameCommandsFactory.DISPLAY_ABOUT) {
                this.aboutCommandProcessor.process(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getAboutCanvas());
            } else if (command == gameCommandsFactory.OPEN_WEB_URL) {
                this.webCommandProcessor.process(this, gameCommandsFactory.OPEN_WEB_URL, NullCanvas.NULL_CANVAS);
            } else if (command == gameCommandsFactory.TOGGLE_KEYBOARD) {
                VirtualKeyboardEventHandler virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance();
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT);
            } else if (this.tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0) {
                MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
                bool isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                if (isFullScreen) {
                    this.features.removeDefault(mainFeatureFactory.FULL_SCREEN);
                } else {
                    this.features.addDefault(mainFeatureFactory.FULL_SCREEN);
                }
                this.updateFullScreen();
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    private void updateFullScreen() {
        MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
        bool isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
        Displayable displayable = this.getDisplay().getCurrent();
        if ((displayable is Canvas)) {
            Canvas canvas = ((Canvas) displayable);
            canvas.setFullScreenMode(isFullScreen);
        }
    }
    

    public virtual void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public virtual MyCanvas getInputMappingInstructionsCanvas() {
        return new GameInputMappingInstructionsCanvas(this, this.createGameLayerManager());
    }
    

    public virtual MyCanvas getInputMappingCanvas() {
        return new GameInputMappingCanvas(this.abeClientInformation, this, this.createGameLayerManager(), this.getHelpPaintable());
    }
    

    public virtual MyCanvas getAboutCanvas() {
        return new BasicPaintablesCanvas(this, CanvasStrings.getInstance().ABOUT, this.createGameLayerManager(), AboutPaintableFactory.getInstance().paintableArray);
    }
    

    public virtual HelpPaintable getHelpPaintable() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual HighScoresCanvas createHighScoresCanvas() {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual void startGameCanvasRunnableInterface() {
        ThreadFactoryUtil threadFactoryUtil = ThreadFactoryUtil.getInstance();
        this.thread = threadFactoryUtil.getInstanceGameCanvasRunnable(this.allbinaryGameCanvasRunnableInterface);
        this.logUtil.putF(new StringMaker().append("Thread Priority: ").appendint(this.thread.getPriority()).toString(), this, "startGameCanvasRunnableInterface");
        this.allbinaryGameCanvasRunnableInterface.setThread(this.thread);
        threadFactoryUtil.start(this.thread);
    }
    

    public virtual void stopGameCanvasRunnableInterface() {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        GameNotificationEventHandler.getInstance().removeAllListeners();
        ColorChangeEventHandler.getInstance().removeAllListeners();
        GameEventHandlerUtil.removeAllListeners();
        GameCanvasRunnableInterface gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            this.logUtil.putF(new StringMaker().append("Set Running False: ").append(gameCanvasRunnableInterface.toString()).toString(), this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface.setRunning(false);
        } else {
            this.logUtil.putF("StopGame - Could Not Stop", this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        }
        ThreadUtil.getInstance().join(this.thread);
        ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable");
        } else {
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable");
        }
        this.logUtil.putF(this.commonStrings.END, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
    }
    

    public virtual GameCanvasRunnableInterface getGameCanvasRunnableInterface() {
        return this.allbinaryGameCanvasRunnableInterface;
    }
    

    public virtual void setGameCanvasRunnableInterface(GameCanvasRunnableInterface gameCanvasRunnableInterface) {
        this.allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface;
    }
    

    public virtual AllBinaryGameLayerManager createGameLayerManager() {
        GameInfo gameInfo = new GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1);
        return new AllBinaryGameLayerManager(this.basicColorFactory.BLACK, this.basicColorFactory.WHITE, gameInfo);
    }
    

    public virtual CommandForm getGameOptionsForm() {
        AllBinaryGameLayerManager layerManager = this.createGameLayerManager();
        return GameOptionsFormFactory.getInstance().init(this, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
    }
    

    public virtual void save() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.SAVE);
        ABHashtable hashtable = this.getCurrentStateHashtable();
        GamePersistanceSingleton.getInstance().save(this.abeClientInformation, hashtable);
    }
    

    public override ABHashtable getCurrentStateHashtable() {
        this.logUtil.putF(this.commonStrings.START, this, "getCurrentStateHashtable");
        ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        if (this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            ABHashtable currentHashtable = this.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable();
            Enumeration enumeration = currentHashtable.keys();
            JObject key = null;
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                key = this.enumerationUtil.nextElement(enumeration);
                hashtable.put(key, currentHashtable.@get(key));
            }
        }
        return hashtable;
    }
    

    public virtual void setLoadGameForm(LoadGameForm loadGameForm) {
        this.loadGameForm = loadGameForm;
    }
    

    public virtual CommandForm getLoadGameForm() {
        return this.loadGameForm;
    }
    

    public virtual void setResized(bool resized) {
        this.resized = resized;
    }
    

    public virtual bool isResized() {
        return this.resized;
    }
    

    public virtual bool isDemoLoading() {
        if (this.startedBefore) {
            return false;
        }
        Displayable displayable = this.getDisplay().getCurrent();
        if ((displayable is DemoCanvas)) {
            DemoCanvas demoCanvas = ((DemoCanvas) displayable);
            if (demoCanvas.isDemoLoading()) {
                return true;
            }
        }
        return false;
    }
}

