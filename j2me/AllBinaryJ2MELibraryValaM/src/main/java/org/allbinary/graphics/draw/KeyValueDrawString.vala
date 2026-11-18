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
// package org.allbinary.graphics.draw
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.font.MyFontProcessor
// import org.allbinary.graphics.font.UpdateMyFontInterface
// import org.allbinary.graphics.font.UpdateMyFontProcessor
// import org.allbinary.logic.string.StringUtil

public class KeyValueDrawString : JObject, UpdateMyFontInterface {
    private MyFontProcessor myFontProcessor;
    private string LABEL;
    private int32 labelX;
    private int32 valueX;
    private string value;

    // Java field initializers run after the base constructor
    private void initFieldsKeyValueDrawString() {
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    
    
    this.valueX = 0;
    this.value = StringUtil.getInstance().EMPTY_STRING;
    }
    

    public KeyValueDrawString(string label, int32 x) {
        base();
        this.initFieldsKeyValueDrawString();
        this.LABEL = label;
        this.labelX = x;
    }
    

    public virtual void updateMeasurement(Graphics graphics) {
        int32 labelWidth = graphics.getFont().stringWidth(this.LABEL) - JString.length(this.LABEL);
        this.valueX = labelWidth + this.labelX;
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public virtual void paint(Graphics graphics, int32 y) {
        this.myFontProcessor.process(graphics);
        graphics.drawString(this.LABEL, this.labelX, y, 0);
        graphics.drawString(this.value, this.valueX, y, 0);
    }
    

    public virtual void update(string value) {
        this.value = value;
    }
}

