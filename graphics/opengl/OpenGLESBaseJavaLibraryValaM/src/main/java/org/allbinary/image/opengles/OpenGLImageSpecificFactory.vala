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
// package org.allbinary.image.opengles
// import org.allbinary.logic.communication.log.PreLogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil

public class OpenGLImageSpecificFactory : JObject {
    private static OpenGLImageSpecificFactory? instance;
    private static bool staticSet_instance = false;
    private static OpenGLImageSpecificFactory staticGet_instance() {
        if (!OpenGLImageSpecificFactory.staticSet_instance) {
            OpenGLImageSpecificFactory.staticSet_instance = true;
            OpenGLImageSpecificFactory.instance = new OpenGLImageSpecificFactory();
        }
        return OpenGLImageSpecificFactory.instance;
    }
    private OpenGLImageFactory imageFactory;
    public bool updating;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLImageSpecificFactory() {
    this.imageFactory = OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY;
    this.updating = false;
    }

    public OpenGLImageSpecificFactory() {
        base();
        this.initFieldsOpenGLImageSpecificFactory();
    }
    

    public static OpenGLImageSpecificFactory getInstance() {
        return OpenGLImageSpecificFactory.staticGet_instance();
    }
    

    public virtual void setImageFactory(OpenGLImageFactory imageFactory) {
        this.imageFactory = imageFactory;
        PreLogUtil.put(new StringMaker().append("Selected Image Factory: ").append(StringUtil.getInstance().toString1(this.imageFactory)).toString(), this, "setImageFactory");
    }
    

    public virtual OpenGLImageFactory getImageFactory() {
        return this.imageFactory;
    }
}

