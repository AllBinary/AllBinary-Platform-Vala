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
// package org.allbinary.graphics.opengles
// import org.allbinary.logic.string.StringUtil

public class OpenGLCapabilities : JObject {
    private static OpenGLCapabilities? instance;
    private static bool staticSet_instance = false;
    private static OpenGLCapabilities staticGet_instance() {
        if (!OpenGLCapabilities.staticSet_instance) {
            OpenGLCapabilities.staticSet_instance = true;
            OpenGLCapabilities.instance = new OpenGLCapabilities();
        }
        return OpenGLCapabilities.instance;
    }
    public bool CUSTOM_GL_SURFACE_VIEW;
    public string VERSION_1_0;
    public string VERSION_1_1;
    public string VERSION_2_0;
    public string VERSION_3_0;
    public string VERSION_3_1;
    public string VERSION_3_2;
    public string VERSION_HIGHER_THAN_EXISTS;
    private string glVersion;
    public int32 shaderVersion;
    public string glInstanceVersion;
    public int32 maxTextureSize;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLCapabilities() {
    this.CUSTOM_GL_SURFACE_VIEW = true;
    this.VERSION_1_0 = "1.0";
    this.VERSION_1_1 = "1.1";
    this.VERSION_2_0 = "2.0";
    this.VERSION_3_0 = "3.0";
    this.VERSION_3_1 = "3.1";
    this.VERSION_3_2 = "3.2";
    this.VERSION_HIGHER_THAN_EXISTS = "999.999";
    this.glVersion = StringUtil.getInstance().EMPTY_STRING;
    this.shaderVersion = 0;
    this.glInstanceVersion = StringUtil.getInstance().EMPTY_STRING;
    this.maxTextureSize = 64;
    }
    

    public static OpenGLCapabilities getInstance() {
        return OpenGLCapabilities.staticGet_instance();
    }
    

    public OpenGLCapabilities() {
        base();
        this.initFieldsOpenGLCapabilities();
    }
    

    public virtual bool isInitialized() {
        return true;
    }
    

    public virtual void initCapabilities(JObject gl) {
    }
    

    public virtual bool isGlExtensionDrawTexture() {
        return false;
    }
    

    public virtual string getGlVersion() {
        return this.glVersion;
    }
    

    public virtual bool isVertexBufferObjectSupport() {
        return false;
    }
    

    public virtual bool isTextureSizeValid(int32 widthAndHeight) {
        return true;
    }
}

