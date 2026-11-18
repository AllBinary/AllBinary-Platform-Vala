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

public class OpenGLFeatureFactory : JObject {
    private static OpenGLFeatureFactory? instance;
    private static bool staticSet_instance = false;
    private static OpenGLFeatureFactory staticGet_instance() {
        if (!OpenGLFeatureFactory.staticSet_instance) {
            OpenGLFeatureFactory.staticSet_instance = true;
            OpenGLFeatureFactory.instance = new OpenGLFeatureFactory();
        }
        return OpenGLFeatureFactory.instance;
    }
    public OpenGLFeature OPENGL_OPTIONS;
    public OpenGLFeature OPENGL;
    public OpenGLFeature OPENGL_SURFACE_VIEW;
    public OpenGLFeature OPENGL_2D;
    public OpenGLFeature OPENGL_3D;
    public OpenGLFeature OPENGL_2D_AND_3D;
    public OpenGLFeature OPENGL_AUTO_SELECT;
    public OpenGLFeature OPENGL_MINIMUM;
    public OpenGLFeature OPENGL_AS_GAME_THREAD;
    public OpenGLFeature OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS;
    public OpenGLFeature IMAGE_COLOR_DEPTH_4444;
    public OpenGLFeature IMAGE_COLOR_DEPTH_8888;
    public OpenGLFeature IMAGE_COLOR_DEPTH_565;
    public OpenGLFeature OPENGL_COLOR_DEPTH_4444;
    public OpenGLFeature OPENGL_COLOR_DEPTH_8888;
    public OpenGLFeature OPENGL_COLOR_DEPTH_565;
    public OpenGLFeature OPENGL_DRAW_TEXTURE;
    public OpenGLFeature OPENGL_VERTEX_BUFFER_OBJECT;
    public OpenGLFeature OPENGL_SIMPLE_OBJECT3D_PROCESSOR;
    public OpenGLFeature OPENGL_COMPLEX_OBJECT3D_PROCESSOR;
    public OpenGLFeature OPENGL_SIMPLE_TEXTURE_PROCESSOR;
    public OpenGLFeature OPENGL_COMPLEX_TEXTURE_PROCESSOR;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLFeatureFactory() {
    this.OPENGL_OPTIONS = new OpenGLFeature("OpenGL Options");
    this.OPENGL = new OpenGLFeature("OpenGL");
    this.OPENGL_SURFACE_VIEW = new OpenGLFeature("GLSurfaceView");
    this.OPENGL_2D = new OpenGLFeature("OpenGL 2D");
    this.OPENGL_3D = new OpenGLFeature("OpenGL 3D");
    this.OPENGL_2D_AND_3D = new OpenGLFeature("OpenGL 2D/3D");
    this.OPENGL_AUTO_SELECT = new OpenGLFeature("Auto Select");
    this.OPENGL_MINIMUM = new OpenGLFeature("Minimum");
    this.OPENGL_AS_GAME_THREAD = new OpenGLFeature("As game thread");
    this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = new OpenGLFeature("As different threads");
    this.IMAGE_COLOR_DEPTH_4444 = new OpenGLFeature("4444");
    this.IMAGE_COLOR_DEPTH_8888 = new OpenGLFeature("8888");
    this.IMAGE_COLOR_DEPTH_565 = new OpenGLFeature("565");
    this.OPENGL_COLOR_DEPTH_4444 = new OpenGLFeature("4444");
    this.OPENGL_COLOR_DEPTH_8888 = new OpenGLFeature("8888");
    this.OPENGL_COLOR_DEPTH_565 = new OpenGLFeature("565");
    this.OPENGL_DRAW_TEXTURE = new OpenGLFeature("GL_OES_draw_texture");
    this.OPENGL_VERTEX_BUFFER_OBJECT = new OpenGLFeature("vertex_buffer_object");
    this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = new OpenGLFeature("Simple Object3d Processor");
    this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = new OpenGLFeature("Complex Object3d Processor");
    this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = new OpenGLFeature("Simple Texture Processor");
    this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = new OpenGLFeature("Complex Texture Processor");
    }
    

    public static OpenGLFeatureFactory getInstance() {
        return OpenGLFeatureFactory.staticGet_instance();
    }
    

    public OpenGLFeatureFactory() {
        base();
        this.initFieldsOpenGLFeatureFactory();
    }
}

