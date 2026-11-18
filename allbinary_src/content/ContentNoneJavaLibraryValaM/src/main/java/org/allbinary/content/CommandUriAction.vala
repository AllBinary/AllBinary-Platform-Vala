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
// package org.allbinary.content
// import javax.microedition.lcdui.Command
// import org.allbinary.logic.communication.log.LogUtil

public class CommandUriAction : JObject {
    private static CommandUriAction? instance;
    private static bool staticSet_instance = false;
    private static CommandUriAction staticGet_instance() {
        if (!CommandUriAction.staticSet_instance) {
            CommandUriAction.staticSet_instance = true;
            CommandUriAction.instance = new CommandUriAction();
        }
        return CommandUriAction.instance;
    }
    public LogUtil logUtil;

    // Java field initializers run after the base constructor
    private void initFieldsCommandUriAction() {
    this.logUtil = LogUtil.getInstance();
    }

    public CommandUriAction() {
        base();
        this.initFieldsCommandUriAction();
    }
    

    public static CommandUriAction getInstance() {
        return CommandUriAction.staticGet_instance();
    }
    

    public virtual void add(Command command, string url) {
    }
    

    public virtual void process(Command command) {
    }
}

