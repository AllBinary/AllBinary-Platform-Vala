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
// package org.allbinary.graphics.opengles.shader
// import javax.microedition.khronos.egl.EGLConfig
// import javax.microedition.khronos.opengles.GL10
// import org.allbinary.graphics.opengles.renderer.RendererStrings
// import org.allbinary.string.CommonStrings

public class ShaderUpdater : JObject {
    private static ShaderUpdater? instance;
    private static bool staticSet_instance = false;
    private static ShaderUpdater staticGet_instance() {
        if (!ShaderUpdater.staticSet_instance) {
            ShaderUpdater.staticSet_instance = true;
            ShaderUpdater.instance = new ShaderUpdater();
        }
        return ShaderUpdater.instance;
    }
    public CommonStrings commonStrings;
    public RendererStrings rendererStrings;

    // Java field initializers run after the base constructor
    private void initFieldsShaderUpdater() {
    this.commonStrings = CommonStrings.getInstance();
    this.rendererStrings = RendererStrings.getInstance();
    }

    public ShaderUpdater() {
        base();
        this.initFieldsShaderUpdater();
    }
    

    public static ShaderUpdater getInstance() {
        return ShaderUpdater.staticGet_instance();
    }
    

    public virtual void onSurfaceCreated(GL10 gl, EGLConfig eglConfig) {
    }
}

