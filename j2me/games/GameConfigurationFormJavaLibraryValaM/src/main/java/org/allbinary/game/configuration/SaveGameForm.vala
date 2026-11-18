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
// package org.allbinary.game.configuration
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.TextField
// import org.allbinary.MIDPUtil
// import org.allbinary.game.commands.GameCommandsFactory
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.displayable.screen.CommandForm
// import org.allbinary.logic.ABSystemWrapper

public class SaveGameForm : CommandForm {
    private static CommandForm? FORM;
    private static bool staticSet_FORM = false;
    private static CommandForm staticGet_FORM() {
        if (!SaveGameForm.staticSet_FORM) {
            SaveGameForm.staticSet_FORM = true;
            SaveGameForm.FORM = CommandForm.getNullCommandForm();
        }
        return SaveGameForm.FORM;
    }
    private MIDPUtil meUtil;

    // Java field initializers run after the base constructor
    private void initFieldsSaveGameForm() {
    this.meUtil = MIDPUtil.getInstance();
    }
    

    public static CommandForm createForm(CommandListener commandListener, string title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        SaveGameForm.FORM = new SaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        return SaveGameForm.staticGet_FORM();
    }
    

    public static CommandForm getInstance() {
        return SaveGameForm.staticGet_FORM();
    }
    

    public SaveGameForm(CommandListener commandListener, string title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        base(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        this.initFieldsSaveGameForm();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        string timeString = (ABSystemWrapper.getInstance().currentTimeMillis()).to_string();
        this.meUtil.appendItem(this, new TextField("Name: ", timeString, 30, TextField.ANY));
        this.initCommands(commandListener);
    }
    

    public override void initCommands(CommandListener cmdListener) {
        GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.SAVE);
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
}

