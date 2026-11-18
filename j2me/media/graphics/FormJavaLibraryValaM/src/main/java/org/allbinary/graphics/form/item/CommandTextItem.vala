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
// import javax.microedition.lcdui.Command
// import org.allbinary.graphics.color.BasicColor

public class CommandTextItem : ABTextItem {
    private Command command;

    // Java field initializers run after the base constructor
    private void initFieldsCommandTextItem() {
    
    }
    

    public CommandTextItem(Command command, int32 layout, string altText, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor);
        this.initFieldsCommandTextItem();
        this.command = command;
    }
    

    public override bool isFocusable() {
        return true;
    }
    

    public virtual Command getCommand() {
        return this.command;
    }
}

