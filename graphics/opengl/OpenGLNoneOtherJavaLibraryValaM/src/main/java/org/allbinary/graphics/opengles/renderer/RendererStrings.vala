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
// package org.allbinary.graphics.opengles.renderer

public class RendererStrings : JObject {
    private static RendererStrings? instance;
    private static bool staticSet_instance = false;
    private static RendererStrings staticGet_instance() {
        if (!RendererStrings.staticSet_instance) {
            RendererStrings.staticSet_instance = true;
            RendererStrings.instance = new RendererStrings();
        }
        return RendererStrings.instance;
    }
    public string ON_SURFACE_CREATED;
    public string ON_SURFACE_CHANGED;
    public string ON_DRAW_FRAME;
    public string ON_DRAW_FRAME_THREED;
    public string ON_DRAW_FRAME_2D;

    // Java field initializers run after the base constructor
    private void initFieldsRendererStrings() {
    this.ON_SURFACE_CREATED = "onSurfaceCreated";
    this.ON_SURFACE_CHANGED = "onSurfaceChanged";
    this.ON_DRAW_FRAME = "onDrawFrame";
    this.ON_DRAW_FRAME_THREED = "onDrawFrameThreed";
    this.ON_DRAW_FRAME_2D = "onDrawFrame2d";
    }

    public RendererStrings() {
        base();
        this.initFieldsRendererStrings();
    }
    

    public static RendererStrings getInstance() {
        return RendererStrings.staticGet_instance();
    }
}

