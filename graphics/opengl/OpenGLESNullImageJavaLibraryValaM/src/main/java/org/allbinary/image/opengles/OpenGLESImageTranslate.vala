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
// package org.allbinary.image.opengles
// import javax.microedition.khronos.opengles.GL10

public class OpenGLESImageTranslate : JObject {
    private static OpenGLESImageTranslate? instance;
    private static bool staticSet_instance = false;
    private static OpenGLESImageTranslate staticGet_instance() {
        if (!OpenGLESImageTranslate.staticSet_instance) {
            OpenGLESImageTranslate.staticSet_instance = true;
            OpenGLESImageTranslate.instance = new OpenGLESImageTranslate();
        }
        return OpenGLESImageTranslate.instance;
    }

    public OpenGLESImageTranslate() {
        base();
    }
    

    public static OpenGLESImageTranslate getInstance() {
        return OpenGLESImageTranslate.staticGet_instance();
    }
    

    public virtual void translate(GL10 gl, OpenGLESImage openGLESImage, float x, float y) {
        openGLESImage.imageProcessor.translate(gl, x, y);
    }
    

    public virtual void translate2(GL10 gl, OpenGLESImage openGLESImage) {
    }
}

