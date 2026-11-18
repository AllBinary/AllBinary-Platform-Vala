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
// package org.allbinary.game.score.displayable
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.TextField
// import org.allbinary.PostGameCommandFactory
// import org.allbinary.game.GameInfo
// import org.allbinary.game.score.HighScore
// import org.allbinary.game.score.HighScoresHelperBaseInterface
// import org.allbinary.game.score.HighScoresFactoryInterface
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.color.BasicColorFactory
// import org.allbinary.graphics.form.item.CustomTextBox
// import org.allbinary.graphics.paint.NullPaintable
// import org.allbinary.graphics.paint.Paintable
// import org.allbinary.graphics.paint.SimpleTextPaintable
// import org.allbinary.input.event.VirtualKeyboardEventHandler
// import org.allbinary.logic.system.os.GenericOperatingSystem
// import org.allbinary.logic.system.os.OperatingSystemFactory
// import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface
// import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory

public class HighScoreTextBox : CustomTextBox {
    private VirtualKeyboardEventHandler virtualKeyboardEventHandler;
    private HighScoreUtil highScoreUtil;
    private Paintable pleaseWait;
    private Paintable paintable;
    public bool submitted;

    // Java field initializers run after the base constructor
    private void initFieldsHighScoreTextBox() {
    this.virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance();
    
    this.pleaseWait = new SimpleTextPaintable(this.commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE);
    this.paintable = NullPaintable.getInstance();
    this.submitted = false;
    }
    

    public HighScoreTextBox(HighScoresFactoryInterface highScoresFactoryInterface, HighScoresHelperBaseInterface highScoresHelper, AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, CommandListener cmdListener, string name, HighScore highScore, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        base(cmdListener, "New High Score Enter Name:", name, 12, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor);
        this.initFieldsHighScoreTextBox();
        this.highScoreUtil = new HighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore);
        GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            string username = InApplicationPurchaseFactory.getInstance().getUserName();
            this.getTextFieldItem().setString(username);
        }
    }
    

    public override void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        PostGameCommandFactory.getInstance().addCommands_1_MyCanvas(this);
        this.addCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        this.setCommandListener(cmdListener);
    }
    

    public override void open() {
        this.virtualKeyboardEventHandler.open();
        this.paintable = NullPaintable.getInstance();
        base.open();
    }
    

    public override void close() {
        this.virtualKeyboardEventHandler.close();
        this.paintable = this.pleaseWait;
        this.repaintBehavior.onChangeRepaint(this);
        base.close();
        this.removeCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        this.update();
        if (this.submitted) {
            this.highScoreUtil.saveHighScore();
        } else {
        }
        this.paintable = NullPaintable.getInstance();
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    public override void update() {
        string name = this.getTextFieldItem().getString();
        this.highScoreUtil.update(name);
        base.update();
    }
    

    public override void paint(Graphics graphics) {
        base.paint(graphics);
        this.paintable.paint(graphics);
    }
    

    public virtual void saveHighScore() {
        this.highScoreUtil.saveHighScore();
    }
    

    public override void submit() {
        this.highScoreUtil.submit(this);
    }
}

