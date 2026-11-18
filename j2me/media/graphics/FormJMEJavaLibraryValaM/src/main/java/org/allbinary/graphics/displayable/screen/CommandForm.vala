/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2002 AllBinary 
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
// package org.allbinary.graphics.displayable.screen
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Form
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.canvas.Processor
// import org.allbinary.game.displayable.canvas.MenuListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.displayable.command.MyCommandInterface
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABStack

public class CommandForm : Form, MyCommandInterface, MenuListener, GameKeyEventSourceInterface {
    private static JObject? NULL_COMMAND_FORM;
    private static bool staticSet_NULL_COMMAND_FORM = false;
    private static JObject staticGet_NULL_COMMAND_FORM() {
        if (!CommandForm.staticSet_NULL_COMMAND_FORM) {
            CommandForm.staticSet_NULL_COMMAND_FORM = true;
            CommandForm.NULL_COMMAND_FORM = NullUtil.getInstance().NULL_OBJECT;
        }
        return CommandForm.NULL_COMMAND_FORM;
    }
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    private Processor repaintProcessor;
    private ABStack commandStack;

    // Java field initializers run after the base constructor
    private void initFieldsCommandForm() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this);
    
    }
    

    public static CommandForm getNullCommandForm() {
        if (CommandForm.staticGet_NULL_COMMAND_FORM() == NullUtil.getInstance().NULL_OBJECT) {
            CommandForm.NULL_COMMAND_FORM = new CommandForm(NullCommandListener.NULL_COMMAND_LISTENER, StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return ((CommandForm) CommandForm.staticGet_NULL_COMMAND_FORM());
    }
    

    public CommandForm(CommandListener commandListener, string formTitle, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        base(formTitle);
        this.initFieldsCommandForm();
        this.commandStack = StdUtil.getInstance().createStack();
        {
            this.repaintProcessor.process();
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public virtual void initCommands(CommandListener cmdListener) {
    }
    

    public virtual void open() {
        this.logUtil.putF(this.commonStrings.START, this, "open");
    }
    

    public virtual void close() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
    }
    

    public virtual void update() {
        this.repaintProcessor.process();
    }
    

    public override int32 getSourceId() {
        return 0;
    }
    

    public virtual void addCommand(Command command) {
        this.commandStack.push(command);
        base.addCommand(command);
    }
    

    public virtual void removeAllCommands() {
        int32 size = this.commandStack.size();
        for (int32 index = 0; index < size; index++) {
            base.removeCommand(((Command) this.commandStack.pop()));
        }
    }
}

