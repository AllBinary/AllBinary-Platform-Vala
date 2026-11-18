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
// package org.allbinary.graphics.displayable
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.Command
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.NullCommandListener
// import org.allbinary.graphics.displayable.command.MyCommandInterface
// import org.allbinary.graphics.displayable.command.MyCommandsFactory
// import org.allbinary.input.TouchJ2ME
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.media.audio.Sound
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.logic.StdUtil
// import org.allbinary.util.ABStack

public class MyCanvas : Canvas, DisplayableInterface, MyCommandInterface {
    public LogUtil logUtil;
    public CommonStrings commonStrings;
    public CanvasStrings canvasStrings;
    public StringUtil stringUtil;
    public DisplayInfoSingleton displayInfo;
    private string name;
    private BasicArrayList childNameList;
    private ABStack commandStack;
    private CommandListener commandListener;
    private bool paused;
    private TouchJ2ME touchME;

    // Java field initializers run after the base constructor
    private void initFieldsMyCanvas() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    
    
    
    this.commandListener = NullCommandListener.NULL_COMMAND_LISTENER;
    this.paused = false;
    this.touchME = new TouchJ2ME();
    }
    

    public MyCanvas(string name, BasicArrayList childNameList) {
        base();
        this.initFieldsMyCanvas();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR);
        this.displayInfo.update(this, this.canvasStrings.CONSTRUCTOR);
        this.name = name;
        this.childNameList = childNameList;
        this.commandStack = StdUtil.getInstance().createStack();
    }
    

    public virtual int32 getWidth() {
        return base.getWidth();
    }
    

    public virtual int32 getHeight() {
        return base.getHeight();
    }
    

    public override void setFullScreenMode(bool mode) {
        base.setFullScreenMode(mode);
        this.displayInfo.update(this, this.canvasStrings.SET_FULL_SCREEN_MODE);
    }
    

    public override void sizeChanged(int32 w, int32 h) {
        this.displayInfo.update(this, this.canvasStrings.SIZE_CHANGED);
    }
    

    public virtual ABStack getCommandStack() {
        return this.commandStack;
    }
    

    public virtual bool isCommand(Command command) {
        return this.commandStack.contains(command);
    }
    

    public virtual void addCommand(Command command) {
        if (!this.commandStack.contains(command)) {
            this.commandStack.push(command);
            base.addCommand(command);
        }
    }
    

    public virtual void removeCommand(Command command) {
        this.commandStack.removeElement(command);
        base.removeCommand(command);
    }
    

    public virtual void removeAllCommands() {
        int32 size = this.commandStack.size();
        for (int32 index = 0; index < size; index++) {
            base.removeCommand(((Command) this.commandStack.pop()));
        }
    }
    

    public virtual void setCommandListener(CommandListener l) {
        base.setCommandListener(l);
        this.commandListener = l;
    }
    

    public virtual CommandListener getCustomCommandListener() {
        return this.commandListener;
    }
    

    public virtual bool isPaused() {
        return this.paused;
    }
    

    public virtual void removePauseCommand() {
        this.removeCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND);
    }
    

    public virtual void pause() {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.PAUSE);
        this.removePauseCommand();
        this.addCommand(MyCommandsFactory.getInstance().RESUME_COMMAND);
        this.setPaused(true);
    }
    

    public virtual void unPause() {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.UN_PAUSE);
        this.removeCommand(MyCommandsFactory.getInstance().RESUME_COMMAND);
        this.addCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND);
        this.setPaused(false);
    }
    

    public virtual void process() {
        this.displayInfo.process();
    }
    

    public override void paint(Graphics graphics) {
    }
    

    public virtual void draw(Graphics graphics) {
    }
    

    public virtual bool hasChild(MyCanvas displayable) {
        return this.childNameList.contains(JString.box(displayable.name));
    }
    

    public virtual void destroy() {
        this.logUtil.putF("Destroyed MyCanvas", this, "destroy");
    }
    

    public virtual void setPaused(bool isPaused) {
        this.paused = isPaused;
    }
    

    public virtual void keyPressedByDevice(int32 keyCode, int32 deviceId) {
    }
    

    public virtual void keyRepeatedByDevice(int32 keyCode, int32 deviceId) {
    }
    

    public virtual void keyReleasedByDevice(int32 keyCode, int32 deviceId) {
    }
    

    public override void pointerDragged(int32 x, int32 y) {
        this.touchME.pointerDragged(x, y);
    }
    

    public override void pointerPressed(int32 x, int32 y) {
        this.touchME.pointerPressed(x, y);
    }
    

    public override void pointerReleased(int32 x, int32 y) {
        this.touchME.pointerReleased(x, y);
    }
    

    public virtual void nextSong(Sound nextSongSound, int32 leftVolume, int32 rightVolume) {
    }
}

