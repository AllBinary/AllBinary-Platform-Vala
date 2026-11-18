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
// package org.allbinary.graphics.form.item
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.J2MEUtil
// import org.allbinary.game.displayable.canvas.GameCommandCanvas
// import org.allbinary.game.input.Input
// import org.allbinary.game.input.InputFactory
// import org.allbinary.game.input.PlatformKeyFactory
// import org.allbinary.game.input.event.RawKeyEventListener
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.validation.TextItemVisitor
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

public class CustomTextBox : GameCommandCanvas, RawKeyEventListener {
    private ABTextFieldItem textFieldItem;
    private InputFactory inputFactory;

    // Java field initializers run after the base constructor
    private void initFieldsCustomTextBox() {
    
    this.inputFactory = InputFactory.getInstance();
    }
    

    public CustomTextBox(CommandListener cmdListener, string label, string text, int32 maxSize, int32 constraints, Font font, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(cmdListener, label, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCustomTextBox();
        StringUtil stringUtil = StringUtil.getInstance();
        ABTextFieldItem textFieldItem = new ABTextFieldItem(this, new TextItemVisitor(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor);
        textFieldItem.setString(text);
        this.textFieldItem = textFieldItem;
        this.setTitle(label);
    }
    

    public virtual void submit() {
    }
    

    public virtual void onEventRaw(int32 keyCode, int32 deviceId, bool repeated) {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).appendint(keyCode).toString(), this, "onEvent");
        this.keyPressedByDevice(keyCode, deviceId);
    }
    

    public override void keyPressed(int32 keyCode) {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    public override void keyReleased(int32 keyCode) {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    public override void keyRepeated(int32 keyCode) {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    public override void keyPressedByDevice(int32 keyCode, int32 deviceId) {
        {
            this.logUtil.putF(new StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
            PlatformKeyFactory platformKeyFactory = PlatformKeyFactory.getInstance();
            Input input = this.inputFactory.getInstanceById(keyCode);
            if (platformKeyFactory.isSubmission(input)) {
                this.submit();
            } else {
                this.textFieldItem.keyPressed(keyCode);
            }
        } /* catch (Exception e): a thrown Java exception stops the program */
    }
    

    public override void keyReleasedByDevice(int32 keyCode, int32 deviceId) {
    }
    

    public override void paint(Graphics graphics) {
        graphics.setColor(this.backgroundColor);
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        graphics.setColor(this.foregroundColor);
        if (!J2MEUtil.isJ2ME()) {
            graphics.drawString(this.getTitle(), 8, 1, 0);
        }
        this.paintXY(graphics, 8, graphics.getFont().getHeight() + 2);
        base.paint(graphics);
    }
    

    public virtual void paintXY(Graphics graphics, int32 x, int32 y) {
        this.textFieldItem.paintXY(graphics, x, y);
    }
    

    public virtual ABTextFieldItem getTextFieldItem() {
        return this.textFieldItem;
    }
}

