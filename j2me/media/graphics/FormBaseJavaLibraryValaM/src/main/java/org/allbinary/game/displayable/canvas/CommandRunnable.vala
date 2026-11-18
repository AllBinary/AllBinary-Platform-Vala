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
// import org.allbinary.graphics.displayable.MyCanvas
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.string.CommonStrings

public class CommandRunnable : JObject, Runnable {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private CommandFormInputProcessor commandFormInputProcessor;
    private Command command;

    // Java field initializers run after the base constructor
    private void initFieldsCommandRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    public CommandRunnable(CommandFormInputProcessor commandFormInputProcessor, Command command) {
        base();
        this.initFieldsCommandRunnable();
        this.commandFormInputProcessor = commandFormInputProcessor;
        this.command = command;
    }
    

    public virtual void run() {
        {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            MyCanvas canvas = this.commandFormInputProcessor.getCanvas();
            CommandListener commandListener = canvas.getCustomCommandListener();
            commandListener.commandAction(this.command, canvas);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
}

