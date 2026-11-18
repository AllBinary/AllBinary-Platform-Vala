/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text
// import javax.microedition.lcdui.CommandListener
// import javax.microedition.lcdui.Font
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.graphics.form.item.CustomTextBox

public class CustomTextBox2 : CustomTextBox {
    

    public CustomTextBox2(CommandListener cmdListener, string label, string text, int32 maxSize, int32 constraints, Font font, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        base(cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor);
        this.getTextFieldItem().setFocus(true);
    }
}

