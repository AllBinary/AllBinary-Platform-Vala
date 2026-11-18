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
// import org.allbinary.graphics.opengles.NullOpenGLProcessorFactory
// import org.allbinary.graphics.opengles.OpenGLProcessor
// import org.allbinary.logic.string.StringUtil

public class ShaderComposite : JObject {
    public OpenGLProcessor disableProgramShaderOpenGLProcessor;
    public string requiresOpenGLVersion;
    public Shader[] shaderArray;
    public ShaderInitializer shaderInitializer;
    public CompositeShaderUpdater compositeShaderUpdater;
    public ModelViewProjection modelViewProjection;
    public OpenGLProcessor colorOpenGLProcessor;
    public OpenGLProcessor vertexOpenGLProcessor;
    public OpenGLProcessor useProgramShaderOpenGLProcessor;
    public OpenGLProcessor shaderMatrixOpenGLProcessor;
    public OpenGLProcessor colorEnableVertexAttribArrayOpenGLProcessor;
    public OpenGLProcessor normalEnableVertexAttribArrayOpenGLProcessor;
    public OpenGLProcessor vertexEnableVertexAttribArrayOpenGLProcessor;
    public OpenGLProcessor textureEnableVertexAttribArrayOpenGLProcessor;
    public OpenGLProcessor colorDisableVertexAttribArrayOpenGLProcessor;
    public OpenGLProcessor normalDisableVertexAttribArrayOpenGLProcessor;
    public OpenGLProcessor vertexDisableVertexAttribArrayOpenGLProcessor;
    public OpenGLProcessor textureDisableVertexAttribArrayOpenGLProcessor;
    public OpenGLObject3dProcessor uniformLightPositionOpenGLProcessor;
    public OpenGLObject3dProcessor uniformLightColorOpenGLProcessor;
    public OpenGLObject3dProcessor uniformCameraPositionOpenGLProcessor;
    public OpenGLObject3dProcessor uniformTextureUnitOpenGLProcessor;
    public int32 programHandle;

    // Java field initializers run after the base constructor
    private void initFieldsShaderComposite() {
    
    
    
    
    
    
    
    
    this.useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.programHandle = 0;
    }
    

    public ShaderComposite(string requiresOpenGLVersion, Shader[] shaderArray, CompositeShaderUpdater compositeShaderUpdater, ShaderInitializer shaderInitializer, ModelViewProjection modelViewProjection, OpenGLProcessor colorOpenGLProcessor, OpenGLProcessor vertexOpenGLProcessor, OpenGLProcessor disableProgramShaderOpenGLProcessor) {
        base();
        this.initFieldsShaderComposite();
        this.requiresOpenGLVersion = requiresOpenGLVersion;
        this.shaderArray = shaderArray;
        this.shaderInitializer = shaderInitializer;
        this.compositeShaderUpdater = compositeShaderUpdater;
        this.modelViewProjection = modelViewProjection;
        this.colorOpenGLProcessor = colorOpenGLProcessor;
        this.vertexOpenGLProcessor = vertexOpenGLProcessor;
        this.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor;
    }
    

    public virtual void init(GL10 gl) {
        this.programHandle = this.shaderInitializer.init(gl, this.shaderArray, StringUtil.getInstance().getArrayInstance());
    }
}

