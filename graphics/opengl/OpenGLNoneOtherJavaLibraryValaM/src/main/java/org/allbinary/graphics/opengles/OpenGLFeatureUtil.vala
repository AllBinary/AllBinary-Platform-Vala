/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.graphics.opengles

public class OpenGLFeatureUtil : JObject {
    private static OpenGLFeatureUtil? instance;
    private static bool staticSet_instance = false;
    private static OpenGLFeatureUtil staticGet_instance() {
        if (!OpenGLFeatureUtil.staticSet_instance) {
            OpenGLFeatureUtil.staticSet_instance = true;
            OpenGLFeatureUtil.instance = new OpenGLFeatureUtil();
        }
        return OpenGLFeatureUtil.instance;
    }
    

    public static OpenGLFeatureUtil getInstance() {
        return OpenGLFeatureUtil.staticGet_instance();
    }
    

    public OpenGLFeatureUtil() {
        base();
    }
    

    public virtual bool isAnyThreed() {
        return false;
    }
}

