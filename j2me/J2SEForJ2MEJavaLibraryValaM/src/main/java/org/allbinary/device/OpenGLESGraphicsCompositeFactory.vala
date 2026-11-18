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
// package org.allbinary.device

public class OpenGLESGraphicsCompositeFactory : JObject {
    private static OpenGLESGraphicsCompositeFactory? instance;
    private static bool staticSet_instance = false;
    private static OpenGLESGraphicsCompositeFactory staticGet_instance() {
        if (!OpenGLESGraphicsCompositeFactory.staticSet_instance) {
            OpenGLESGraphicsCompositeFactory.staticSet_instance = true;
            OpenGLESGraphicsCompositeFactory.instance = new OpenGLESGraphicsCompositeFactory();
        }
        return OpenGLESGraphicsCompositeFactory.instance;
    }
    private OpenGLESGraphicsFactory openGLESGraphicsFactory;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLESGraphicsCompositeFactory() {
    this.openGLESGraphicsFactory = new OpenGLESGraphicsFactory();
    }

    public OpenGLESGraphicsCompositeFactory() {
        base();
        this.initFieldsOpenGLESGraphicsCompositeFactory();
    }
    

    public static OpenGLESGraphicsCompositeFactory getInstance() {
        return OpenGLESGraphicsCompositeFactory.staticGet_instance();
    }
    

    public virtual void @set(OpenGLESGraphicsFactory openGLESGraphicsFactory) {
        this.openGLESGraphicsFactory = openGLESGraphicsFactory;
    }
    

    public virtual OpenGLESGraphicsFactory @get() {
        return this.openGLESGraphicsFactory;
    }
}

