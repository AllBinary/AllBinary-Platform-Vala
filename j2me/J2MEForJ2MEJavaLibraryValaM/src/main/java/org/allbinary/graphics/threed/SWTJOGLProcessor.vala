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
// package org.allbinary.graphics.threed
// import javax.microedition.lcdui.Font
// import javax.microedition.midlet.MIDlet

//OpenGLNone
public class SWTJOGLProcessor : JObject, Runnable {
    private static SWTJOGLProcessor? instance;
    private static bool staticSet_instance = false;
    private static SWTJOGLProcessor staticGet_instance() {
        if (!SWTJOGLProcessor.staticSet_instance) {
            SWTJOGLProcessor.staticSet_instance = true;
            SWTJOGLProcessor.instance = new SWTJOGLProcessor();
        }
        return SWTJOGLProcessor.instance;
    }

    public SWTJOGLProcessor() {
        base();
    }
    

    public static SWTJOGLProcessor getInstance() {
        return SWTJOGLProcessor.staticGet_instance();
    }
    

    public virtual void init(JObject display, JObject comp) {
    }
    

    public virtual bool isHolderCreated() {
        return true;
    }
    

    public virtual void setRenderer(JObject renderer) {
    }
    

    public virtual bool isJOGL() {
        return false;
    }
    

    public virtual void createSurface() {
    }
    

    public virtual void onSurfaceCreated() {
    }
    

    public virtual void onSurfaceChangedForEvent(JObject event) {
    }
    

    public virtual void onSurfaceChanged() {
    }
    

    public virtual void onSurfaceChangedWH(int32 width, int32 height) {
    }
    

    public virtual void addListener() {
    }
    

    public virtual void addListeners(MIDlet midlet) {
    }
    

    public virtual void run() {
    }
    

    public virtual void clear() {
    }
    

    public virtual void setCustom(int32 width, int32 height, float ratio) {
    }
    

    public virtual void setRatioProcessor(RatioProcessor ratioProcessor) {
    }
    

    public virtual bool isPortraitRatioProcessor() {
        return true;
    }
    

    public virtual int32 charWidth(Font font, uint16 ch) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual int32 charsWidth(Font font, uint16[] ch, int32 offset, int32 length) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual int32 stringWidth(Font font, string str) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual int32 substringWidth(Font font, string str, int32 offset, int32 len) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

