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
// import javax.microedition.lcdui.Command
// import org.allbinary.logic.string.StringUtil

public class HighScoreCommands : JObject {
    private static HighScoreCommands? instance;
    private static bool staticSet_instance = false;
    private static HighScoreCommands staticGet_instance() {
        if (!HighScoreCommands.staticSet_instance) {
            HighScoreCommands.staticSet_instance = true;
            HighScoreCommands.instance = new HighScoreCommands();
        }
        return HighScoreCommands.instance;
    }
    public Command DISPLAY;
    public Command PERSONAL;
    public Command WORLD;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoreCommands() {
    this.DISPLAY = new Command("Scores", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.PERSONAL = new Command("Personal", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.WORLD = new Command("World", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    }

    public HighScoreCommands() {
        base();
        this.initFieldsHighScoreCommands();
    }
    

    public static HighScoreCommands getInstance() {
        return HighScoreCommands.staticGet_instance();
    }
}

