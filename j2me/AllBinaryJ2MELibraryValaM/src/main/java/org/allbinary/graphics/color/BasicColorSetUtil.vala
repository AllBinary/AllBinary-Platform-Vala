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
// package org.allbinary.graphics.color
// import javax.microedition.lcdui.Graphics

public class BasicColorSetUtil : JObject {
    private static BasicColorSetUtil? instance;
    private static bool staticSet_instance = false;
    private static BasicColorSetUtil staticGet_instance() {
        if (!BasicColorSetUtil.staticSet_instance) {
            BasicColorSetUtil.staticSet_instance = true;
            BasicColorSetUtil.instance = new BasicColorSetUtil();
        }
        return BasicColorSetUtil.instance;
    }
    

    public static BasicColorSetUtil getInstance() {
        return BasicColorSetUtil.staticGet_instance();
    }
    

    public BasicColorSetUtil() {
        base();
    }
    

    public virtual void setBasicColorP(Graphics graphics, BasicColor basicColor) {
        graphics.setColor(basicColor.intValue());
    }
    

    public virtual void setBasicColorP3(Graphics graphics, BasicColor basicColor, int32 value) {
        graphics.setColor(value);
    }
}

