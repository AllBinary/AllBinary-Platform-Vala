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
// package org.allbinary.graphics.font
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics

public class FontDebugFactory : JObject {
    private static FontDebugFactory? instance;
    private static bool staticSet_instance = false;
    private static FontDebugFactory staticGet_instance() {
        if (!FontDebugFactory.staticSet_instance) {
            FontDebugFactory.staticSet_instance = true;
            FontDebugFactory.instance = new FontDebugFactory();
        }
        return FontDebugFactory.instance;
    }

    public FontDebugFactory() {
        base();
    }
    

    public static FontDebugFactory getInstance() {
        return FontDebugFactory.staticGet_instance();
    }
    

    public virtual void setFont(Font font, Graphics graphics) {
        graphics.setFont(font);
    }
}

