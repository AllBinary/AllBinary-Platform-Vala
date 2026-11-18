/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.font
// import javax.microedition.lcdui.Graphics

public class UpdateMyFontProcessor : MyFontProcessor {
    private UpdateMyFontInterface updateMeasurementProcessor;

    // Java field initializers run after the base constructor
    private void initFieldsUpdateMyFontProcessor() {
    
    }
    

    public UpdateMyFontProcessor(UpdateMyFontInterface keyValueDrawCharArray) {
        base();
        this.initFieldsUpdateMyFontProcessor();
        this.updateMeasurementProcessor = keyValueDrawCharArray;
    }
    

    public override void process(Graphics graphics) {
        this.updateMeasurementProcessor.updateMeasurement(graphics);
    }
}

