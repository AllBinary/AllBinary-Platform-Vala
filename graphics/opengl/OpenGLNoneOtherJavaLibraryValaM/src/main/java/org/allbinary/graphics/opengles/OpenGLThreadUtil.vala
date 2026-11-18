// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

public class OpenGLThreadUtil : JObject {
    private static OpenGLThreadUtil? instance;
    private static bool staticSet_instance = false;
    private static OpenGLThreadUtil staticGet_instance() {
        if (!OpenGLThreadUtil.staticSet_instance) {
            OpenGLThreadUtil.staticSet_instance = true;
            OpenGLThreadUtil.instance = new OpenGLThreadUtil();
        }
        return OpenGLThreadUtil.instance;
    }

    public OpenGLThreadUtil() {
        base();
    }
    

    public static OpenGLThreadUtil getInstance() {
        return OpenGLThreadUtil.staticGet_instance();
    }
    

    public virtual void @set(JObject glSurfaceView) {
    }
    

    public virtual void onPause() {
    }
    

    public virtual void onResume() {
    }
}

