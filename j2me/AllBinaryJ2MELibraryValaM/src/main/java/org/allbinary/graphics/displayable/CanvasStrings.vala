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
// package org.allbinary.graphics.displayable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListUtil

public class CanvasStrings : JObject {
    private static CanvasStrings? instance;
    private static bool staticSet_instance = false;
    private static CanvasStrings staticGet_instance() {
        if (!CanvasStrings.staticSet_instance) {
            CanvasStrings.staticSet_instance = true;
            CanvasStrings.instance = new CanvasStrings();
        }
        return CanvasStrings.instance;
    }
    public string CONSTRUCTOR;
    public string PAUSE;
    public string UN_PAUSE;
    public string SET_FULL_SCREEN_MODE;
    public string SIZE_CHANGED;
    public string SCALED_IMAGES;
    public string PAINT;
    public string ON_DISPLAY_CHANGE_EVENT;
    public string UPDATE_MEASUREMENT;
    public string FD_WIDTH;
    public string FD_HEIGHT;
    public BasicArrayList EMPTY_CHILD_NAME_LIST;
    public string ABOUT;
    public string OPTIONS;
    public string FONT_ATLAS;
    public string OBJ_MODEL;
    public string MD2_MODEL;
    public string _PNG;

    // Java field initializers run after the base constructor
    private void initFieldsCanvasStrings() {
    this.CONSTRUCTOR = "MyCanvas::MyCanvas";
    this.PAUSE = "MyCanvas::pause";
    this.UN_PAUSE = "MyCanvas::unPause";
    this.SET_FULL_SCREEN_MODE = "setFullScreenMode";
    this.SIZE_CHANGED = "sizeChanged";
    this.SCALED_IMAGES = "scaledImages";
    this.PAINT = "paint";
    this.ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent";
    this.UPDATE_MEASUREMENT = "updateMeasurement";
    this.FD_WIDTH = " font/display width: ";
    this.FD_HEIGHT = " font/display height: ";
    this.EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.ABOUT = "About";
    this.OPTIONS = "Options";
    this.FONT_ATLAS = "/font.png";
    this.OBJ_MODEL = "_obj";
    this.MD2_MODEL = "_md2";
    this._PNG = ".png";
    }

    public CanvasStrings() {
        base();
        this.initFieldsCanvasStrings();
    }
    

    public static CanvasStrings getInstance() {
        return CanvasStrings.staticGet_instance();
    }
}

