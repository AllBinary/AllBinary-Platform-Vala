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
// import org.allbinary.util.BasicArrayList

public class ShaderManager : JObject {
    private static ShaderManager? instance;
    private static bool staticSet_instance = false;
    private static ShaderManager staticGet_instance() {
        if (!ShaderManager.staticSet_instance) {
            ShaderManager.staticSet_instance = true;
            ShaderManager.instance = new ShaderManager(-1, -1);
        }
        return ShaderManager.instance;
    }
    public string LOAD_SHADER;
    public CommonStrings commonStrings;
    public int32 GL_VERTEX_SHADER;
    public int32 GL_FRAGMENT_SHADER;

    // Java field initializers run after the base constructor
    private void initFieldsShaderManager() {
    this.LOAD_SHADER = "loadShader";
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    public static ShaderManager getInstance() {
        return ShaderManager.staticGet_instance();
    }
    

    public ShaderManager(int32 GL_VERTEX_SHADER, int32 GL_FRAGMENT_SHADER) {
        base();
        this.initFieldsShaderManager();
        this.GL_VERTEX_SHADER = GL_VERTEX_SHADER;
        this.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER;
    }
    

    public virtual int32 load(GL10 gl, string resource, string[] shaderAsStringArray, int32 shaderType) {
        return -1;
    }
    

    public virtual int32 loadShader(GL10 gl, string resource, BasicArrayList stringList, int32 shaderType) {
        return -1;
    }
}

