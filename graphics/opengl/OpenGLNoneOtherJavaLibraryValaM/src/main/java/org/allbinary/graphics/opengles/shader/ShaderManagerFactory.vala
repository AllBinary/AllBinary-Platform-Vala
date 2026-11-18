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

public class ShaderManagerFactory : JObject {
    private static ShaderManagerFactory? instance;
    private static bool staticSet_instance = false;
    private static ShaderManagerFactory staticGet_instance() {
        if (!ShaderManagerFactory.staticSet_instance) {
            ShaderManagerFactory.staticSet_instance = true;
            ShaderManagerFactory.instance = new ShaderManagerFactory();
        }
        return ShaderManagerFactory.instance;
    }

    public ShaderManagerFactory() {
        base();
    }
    

    public static ShaderManagerFactory getInstance() {
        return ShaderManagerFactory.staticGet_instance();
    }
    

    public virtual ShaderManager create() {
        return ShaderManager.getInstance();
    }
}

