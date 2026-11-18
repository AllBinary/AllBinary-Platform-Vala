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
// import javax.microedition.lcdui.Image
// import org.allbinary.platform.graphics.PlatformBitmapBaseFactory
// import org.allbinary.platform.opengles.PlatformTextureBaseFactory

public class OpenGLImageFactory : JObject {
    public static OpenGLImageFactory? NULL_OPENGL_IMAGE_FACTORY;
    private static bool staticSet_NULL_OPENGL_IMAGE_FACTORY = false;
    public static OpenGLImageFactory staticGet_NULL_OPENGL_IMAGE_FACTORY() {
        if (!OpenGLImageFactory.staticSet_NULL_OPENGL_IMAGE_FACTORY) {
            OpenGLImageFactory.staticSet_NULL_OPENGL_IMAGE_FACTORY = true;
            OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY = new OpenGLImageFactory();
        }
        return OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY;
    }

    public OpenGLImageFactory() {
        base();
    }
    

    public virtual Image getInstance3(Image image, PlatformBitmapBaseFactory bitmapFactory, PlatformTextureBaseFactory textureFactory) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

