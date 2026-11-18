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

public class SimpleShaderInitializer : ShaderInitializer {
    private static SimpleShaderInitializer? instanceC;
    private static bool staticSet_instanceC = false;
    private static SimpleShaderInitializer staticGet_instanceC() {
        if (!SimpleShaderInitializer.staticSet_instanceC) {
            SimpleShaderInitializer.staticSet_instanceC = true;
            SimpleShaderInitializer.instanceC = new SimpleShaderInitializer();
        }
        return SimpleShaderInitializer.instanceC;
    }

    public SimpleShaderInitializer() {
        base();
    }
    

    public static SimpleShaderInitializer getInstance() {
        return SimpleShaderInitializer.staticGet_instanceC();
    }
}

