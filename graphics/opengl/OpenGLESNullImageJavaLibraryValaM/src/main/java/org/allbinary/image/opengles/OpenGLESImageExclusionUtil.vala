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
// import javax.microedition.lcdui.Image
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class OpenGLESImageExclusionUtil : JObject {
    private static OpenGLESImageExclusionUtil? instance;
    private static bool staticSet_instance = false;
    private static OpenGLESImageExclusionUtil staticGet_instance() {
        if (!OpenGLESImageExclusionUtil.staticSet_instance) {
            OpenGLESImageExclusionUtil.staticSet_instance = true;
            OpenGLESImageExclusionUtil.instance = new OpenGLESImageExclusionUtil();
        }
        return OpenGLESImageExclusionUtil.instance;
    }
    public BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLESImageExclusionUtil() {
    this.list = new BasicArrayListD();
    }

    public OpenGLESImageExclusionUtil() {
        base();
        this.initFieldsOpenGLESImageExclusionUtil();
    }
    

    public static OpenGLESImageExclusionUtil getInstance() {
        return OpenGLESImageExclusionUtil.staticGet_instance();
    }
    

    public virtual bool isCustomScaling(Image image) {
        return false;
    }
}

