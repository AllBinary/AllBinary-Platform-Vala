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
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics

public class MyFontProcessor : JObject {
    private static MyFontProcessor? instance;
    private static bool staticSet_instance = false;
    private static MyFontProcessor staticGet_instance() {
        if (!MyFontProcessor.staticSet_instance) {
            MyFontProcessor.staticSet_instance = true;
            MyFontProcessor.instance = new MyFontProcessor();
        }
        return MyFontProcessor.instance;
    }

    public MyFontProcessor() {
        base();
    }
    

    public static int32 defaultCharWidth(Font font) {
        return font.charWidth(((uint16) 'C'));
    }
    

    public static int32 defaultStringWidth(Font font, int32 size) {
        return MyFontProcessor.defaultCharWidth(font) * size;
    }
    

    public static MyFontProcessor getInstance() {
        return MyFontProcessor.staticGet_instance();
    }
    

    public virtual void process(Graphics graphics) {
    }
}

