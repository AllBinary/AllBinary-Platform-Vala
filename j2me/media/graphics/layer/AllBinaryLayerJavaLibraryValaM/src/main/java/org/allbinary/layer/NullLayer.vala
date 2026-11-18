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
// package org.allbinary.layer
// import javax.microedition.lcdui.Graphics

public class NullLayer : Layer {
    private static NullLayer? instance;
    private static bool staticSet_instance = false;
    private static NullLayer staticGet_instance() {
        if (!NullLayer.staticSet_instance) {
            NullLayer.staticSet_instance = true;
            NullLayer.instance = new NullLayer();
        }
        return NullLayer.instance;
    }
    

    public static NullLayer getInstance() {
        return NullLayer.staticGet_instance();
    }
    

    public NullLayer() {
        base(0, 0);
    }
    

    public override void paint(Graphics graphics) {
    }
}

