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
// import org.allbinary.logic.NullUtil
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonSeps

public class CompositeShaderUpdater : ShaderUpdater {
    private static CompositeShaderUpdater? instanceC;
    private static bool staticSet_instanceC = false;
    private static CompositeShaderUpdater staticGet_instanceC() {
        if (!CompositeShaderUpdater.staticSet_instanceC) {
            CompositeShaderUpdater.staticSet_instanceC = true;
            CompositeShaderUpdater.instanceC = new CompositeShaderUpdater(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY);
        }
        return CompositeShaderUpdater.instanceC;
    }
    public CommonSeps commonSeps;

    // Java field initializers run after the base constructor
    private void initFieldsCompositeShaderUpdater() {
    this.commonSeps = CommonSeps.getInstance();
    }
    

    public static CompositeShaderUpdater getInstance() {
        return CompositeShaderUpdater.staticGet_instanceC();
    }
    

    public CompositeShaderUpdater(string[] uniformBlockArray, string[] uniformArray, string[] attributeArray, int32[] attributeHandleArray) {
        base();
        this.initFieldsCompositeShaderUpdater();
    }
    

    public virtual void onSurfaceCreated(GL10 gl, EGLConfig eglConfig, int32 programHandle) {
    }
    

    public virtual void onSurfaceDestroyed(GL10 gl) {
    }
}

