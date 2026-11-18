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
// package org.allbinary.graphics.displayable.command
// import javax.microedition.lcdui.Command
// import org.allbinary.logic.string.StringUtil

public class MyCommandsFactory : JObject {
    private static MyCommandsFactory? instance;
    private static bool staticSet_instance = false;
    private static MyCommandsFactory staticGet_instance() {
        if (!MyCommandsFactory.staticSet_instance) {
            MyCommandsFactory.staticSet_instance = true;
            MyCommandsFactory.instance = new MyCommandsFactory();
        }
        return MyCommandsFactory.instance;
    }
    public Command NO_COMMAND;
    public Command GAUGE_CHANGE;
    public Command SET_DISPLAYABLE;
    public Command PAUSE_COMMAND;
    public Command RESUME_COMMAND;

    // Java field initializers run after the base constructor
    private void initFieldsMyCommandsFactory() {
    this.NO_COMMAND = new Command(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, -1, -1);
    this.GAUGE_CHANGE = new Command("GAUGE_CHANGE", StringUtil.getInstance().EMPTY_STRING, Command.ITEM, 1);
    this.SET_DISPLAYABLE = new Command("Display", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.PAUSE_COMMAND = new Command("Pause", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    this.RESUME_COMMAND = new Command("Resume", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    }
    

    public static MyCommandsFactory getInstance() {
        return MyCommandsFactory.staticGet_instance();
    }
    

    public MyCommandsFactory() {
        base();
        this.initFieldsMyCommandsFactory();
    }
}

