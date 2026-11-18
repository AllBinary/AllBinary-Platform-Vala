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
// import javax.microedition.khronos.opengles.GL10
// import org.allbinary.string.CommonStrings

public class ShaderInitializer : JObject {
    private static ShaderInitializer? instance;
    private static bool staticSet_instance = false;
    private static ShaderInitializer staticGet_instance() {
        if (!ShaderInitializer.staticSet_instance) {
            ShaderInitializer.staticSet_instance = true;
            ShaderInitializer.instance = new ShaderInitializer();
        }
        return ShaderInitializer.instance;
    }
    public CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    private void initFieldsShaderInitializer() {
    this.commonStrings = CommonStrings.getInstance();
    }

    public ShaderInitializer() {
        base();
        this.initFieldsShaderInitializer();
    }
    

    public static ShaderInitializer getInstance() {
        return ShaderInitializer.staticGet_instance();
    }
    

    public virtual int32 init(GL10 gl, Shader[] shader, string[] attributeArray) {
        return -1;
    }
}

