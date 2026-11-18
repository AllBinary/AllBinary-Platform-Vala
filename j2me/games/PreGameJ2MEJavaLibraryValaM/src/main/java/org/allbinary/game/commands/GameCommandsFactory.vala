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
// package org.allbinary.game.commands
// import javax.microedition.lcdui.Command
// import org.allbinary.graphics.displayable.CanvasStrings
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings

public class GameCommandsFactory : JObject {
    private static JObject? instance;
    private static bool staticSet_instance = false;
    private static JObject staticGet_instance() {
        if (!GameCommandsFactory.staticSet_instance) {
            GameCommandsFactory.staticSet_instance = true;
            GameCommandsFactory.instance = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameCommandsFactory.instance;
    }
    public Command TOGGLE_FULLSCREEN;
    public Command TOGGLE_KEYBOARD;
    public Command SET_MENU_DISPLAYABLE;
    public Command APPLICATION_UPDATE;
    public Command DISPLAY_ABOUT;
    public Command OPEN_WEB_URL;
    public Command CLOSE_OPTIONS;
    public Command DISPLAY_OPTIONS;
    public Command START_TRACE;
    public Command STOP_TRACE;
    public Command DEFAULT_OPTIONS;
    public Command SHOW_GAME_CANVAS;
    public Command CLOSE_AND_SHOW_GAME_CANVAS;
    public Command QUIT_COMMAND;
    public Command RESTART_COMMAND;
    public Command DISPLAY_SAVE_FORM;
    public Command SAVE;
    public Command DISPLAY_LOAD_FORM;
    public Command LOAD_FILE;
    public Command DELETE_FILE;
    public Command EXIT_COMMAND;
    public Command EXIT_WITHOUT_PROGRESS_COMMAND;
    public Command START_COMMAND;
    public Command CONTINUE_COMMAND;
    public Command SELECT_COMMAND;
    public Command FEATURE_UPDATE;
    public Command BUY_COMMAND;

    // Java field initializers run after the base constructor
    private void initFieldsGameCommandsFactory() {
    this.TOGGLE_FULLSCREEN = new Command("Toggle FullScreen", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.TOGGLE_KEYBOARD = new Command("Keyboard", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SET_MENU_DISPLAYABLE = new Command("Set Menu Displayable", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.APPLICATION_UPDATE = new Command(CommonStrings.getInstance().UPDATE, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DISPLAY_ABOUT = new Command(CanvasStrings.getInstance().ABOUT, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.OPEN_WEB_URL = new Command("Open Web URL", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.CLOSE_OPTIONS = new Command("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DISPLAY_OPTIONS = new Command(CanvasStrings.getInstance().OPTIONS, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.START_TRACE = new Command("Start Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.STOP_TRACE = new Command("Stop Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DEFAULT_OPTIONS = new Command("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SHOW_GAME_CANVAS = new Command("Back to Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.CLOSE_AND_SHOW_GAME_CANVAS = new Command("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.QUIT_COMMAND = new Command("Quit", StringUtil.getInstance().EMPTY_STRING, Command.STOP, 1);
    this.RESTART_COMMAND = new Command("Restart", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    this.DISPLAY_SAVE_FORM = new Command("Save To", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.SAVE = new Command("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.DISPLAY_LOAD_FORM = new Command("Load", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.LOAD_FILE = new Command("Load File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.DELETE_FILE = new Command("Delete File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.EXIT_COMMAND = new Command("Exit", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2);
    this.EXIT_WITHOUT_PROGRESS_COMMAND = new Command("Exit Without Progress", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2);
    this.START_COMMAND = new Command(CommonStrings.getInstance().START, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.CONTINUE_COMMAND = new Command("Continue", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SELECT_COMMAND = new Command("Select", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.FEATURE_UPDATE = new Command("Feature Update", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.BUY_COMMAND = new Command("BUY", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    }
    

    public static GameCommandsFactory getInstance() {
        if (GameCommandsFactory.staticGet_instance() == NullUtil.getInstance().NULL_OBJECT) {
            GameCommandsFactory.instance = new GameCommandsFactory();
        }
        return ((GameCommandsFactory) GameCommandsFactory.staticGet_instance());
    }
    

    public GameCommandsFactory() {
        base();
        this.initFieldsGameCommandsFactory();
    }
}

