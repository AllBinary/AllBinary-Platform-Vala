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

public class NullOpenGLTextureProcessor : JObject {
    private static OpenGLObject3dProcessor? instance;
    private static bool staticSet_instance = false;
    private static OpenGLObject3dProcessor staticGet_instance() {
        if (!NullOpenGLTextureProcessor.staticSet_instance) {
            NullOpenGLTextureProcessor.staticSet_instance = true;
            NullOpenGLTextureProcessor.instance = new OpenGLObject3dProcessor();
        }
        return NullOpenGLTextureProcessor.instance;
    }

    public NullOpenGLTextureProcessor() {
        base();
    }
    

    public static OpenGLObject3dProcessor getInstance() {
        return NullOpenGLTextureProcessor.staticGet_instance();
    }
}

