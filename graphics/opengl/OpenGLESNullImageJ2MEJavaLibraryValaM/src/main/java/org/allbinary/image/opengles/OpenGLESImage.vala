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
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullImage
// import org.allbinary.platform.graphics.PlatformBitmapBase
// import org.allbinary.platform.graphics.PlatformBitmapBaseFactory
// import org.allbinary.platform.opengles.PlatformTextureBaseFactory
// import org.allbinary.string.CommonStrings
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

//OpenGLESNullImageJ2MEJavaLibrary
public class OpenGLESImage : JObject, OpenGLSurfaceChangedInterface {
    public static OpenGLESImage? NULL_OPENGL_IMAGE;
    private static bool staticSet_NULL_OPENGL_IMAGE = false;
    public static OpenGLESImage staticGet_NULL_OPENGL_IMAGE() {
        if (!OpenGLESImage.staticSet_NULL_OPENGL_IMAGE) {
            OpenGLESImage.staticSet_NULL_OPENGL_IMAGE = true;
            OpenGLESImage.NULL_OPENGL_IMAGE = new OpenGLESImage(NullImage.NULL_IMAGE, PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
        }
        return OpenGLESImage.NULL_OPENGL_IMAGE;
    }
    public static BasicArrayList? texture2dList;
    private static bool staticSet_texture2dList = false;
    public static BasicArrayList staticGet_texture2dList() {
        if (!OpenGLESImage.staticSet_texture2dList) {
            OpenGLESImage.staticSet_texture2dList = true;
            OpenGLESImage.texture2dList = new BasicArrayListD();
        }
        return OpenGLESImage.texture2dList;
    }
    public const int32 TYPE = 4;
    public CommonStrings commonStrings;
    public PlatformTextureBaseFactory textureFactory;
    public PlatformBitmapBase openGLBitmap;
    public OpenGLESImageProperties openGLESImageProperties;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLESImage() {
    this.commonStrings = CommonStrings.getInstance();
    
    
    this.openGLESImageProperties = new OpenGLESImageProperties();
    }
    

    public OpenGLESImage(Image image, PlatformBitmapBaseFactory bitmapFactory, PlatformTextureBaseFactory textureFactory) {
        base();
        this.initFieldsOpenGLESImage();
        this.openGLBitmap = bitmapFactory.createBitmap(image);
        this.textureFactory = textureFactory;
    }
    

    public virtual void @set(GL gl) {
        JSystem.fatal(new JException("Exception", this.commonStrings.NOT_IMPLEMENTED));
    }
    

    public virtual bool initTexture(GL10 gl) {
        return false;
    }
    

    public virtual void drawRegion(GL10 gl, int32 viewHeight, float x_src, float y_src, float width, float height, int32 x, int32 y, int32 z) {
    }
    

    public virtual void draw(GL10 gl, int32 x, int32 y, int32 z) {
    }
    

    public virtual int32 getType() {
        return OpenGLESImage.TYPE;
    }
}

