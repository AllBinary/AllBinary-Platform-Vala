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
// package org.allbinary.graphics.threed

public class GLHolder : JObject {
    public bool isCreated;

    // Java field initializers run after the base constructor
    private void initFieldsGLHolder() {
    this.isCreated = true;
    }
    

    public GLHolder() {
        base();
        this.initFieldsGLHolder();
    }
    

    public virtual void runOnSurfaceCreated(JObject renderer) {
    }
    

    public virtual void runOnSurfaceChanged(JObject renderer, int32 width, int32 height) {
    }
    

    public virtual void run(JObject renderer) {
    }
}

