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
// package org.allbinary.graphics

public class GraphicsStrings : JObject {
    private static GraphicsStrings? instance;
    private static bool staticSet_instance = false;
    private static GraphicsStrings staticGet_instance() {
        if (!GraphicsStrings.staticSet_instance) {
            GraphicsStrings.staticSet_instance = true;
            GraphicsStrings.instance = new GraphicsStrings();
        }
        return GraphicsStrings.instance;
    }
    public string ANIMATION;
    public string ANGLE;
    public string MOVEMENT_ANGLE;
    public string ROTATION;
    public string OPACITY;
    public string HTML;
    public string WIDTH;
    public string HEIGHT;

    // Java field initializers run after the base constructor
    private void initFieldsGraphicsStrings() {
    this.ANIMATION = "animation";
    this.ANGLE = "angle";
    this.MOVEMENT_ANGLE = "movement_angle";
    this.ROTATION = "rotation";
    this.OPACITY = "opacity";
    this.HTML = "HTML";
    this.WIDTH = "width";
    this.HEIGHT = "height";
    }

    public GraphicsStrings() {
        base();
        this.initFieldsGraphicsStrings();
    }
    

    public static GraphicsStrings getInstance() {
        return GraphicsStrings.staticGet_instance();
    }
}

