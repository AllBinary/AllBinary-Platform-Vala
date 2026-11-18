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
// package org.allbinary.image.opengles

public class ModifierOpenGLESImageProcessor : OpenGLESImageProcessor {
    private static ModifierOpenGLESImageProcessor? instanceC;
    private static bool staticSet_instanceC = false;
    private static ModifierOpenGLESImageProcessor staticGet_instanceC() {
        if (!ModifierOpenGLESImageProcessor.staticSet_instanceC) {
            ModifierOpenGLESImageProcessor.staticSet_instanceC = true;
            ModifierOpenGLESImageProcessor.instanceC = new ModifierOpenGLESImageProcessor();
        }
        return ModifierOpenGLESImageProcessor.instanceC;
    }

    public ModifierOpenGLESImageProcessor() {
        base();
    }
    

    public static ModifierOpenGLESImageProcessor getInstance() {
        return ModifierOpenGLESImageProcessor.staticGet_instanceC();
    }
}

