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
// package org.allbinary.game.canvas
// import javax.microedition.lcdui.Canvas
// import javax.microedition.lcdui.NullCanvas
// import org.allbinary.game.layer.AllBinaryGameLayerManager

public class ABToGBUtil : JObject {
    private static ABToGBUtil? instance;
    private static bool staticSet_instance = false;
    private static ABToGBUtil staticGet_instance() {
        if (!ABToGBUtil.staticSet_instance) {
            ABToGBUtil.staticSet_instance = true;
            ABToGBUtil.instance = new ABToGBUtil();
        }
        return ABToGBUtil.instance;
    }
    public Canvas abCanvas;
    public AllBinaryGameLayerManager allBinaryGameLayerManager;

    // Java field initializers run after the base constructor
    private void initFieldsABToGBUtil() {
    this.abCanvas = NullCanvas.NULL_CANVAS;
    this.allBinaryGameLayerManager = AllBinaryGameLayerManager.getNullInstance();
    }

    public ABToGBUtil() {
        base();
        this.initFieldsABToGBUtil();
    }
    

    public static ABToGBUtil getInstance() {
        return ABToGBUtil.staticGet_instance();
    }
}

