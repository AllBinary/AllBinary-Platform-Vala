// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
// import javax.microedition.lcdui.Image

public class OpenGLUtil : JObject {
    private static OpenGLUtil? instance;
    private static bool staticSet_instance = false;
    private static OpenGLUtil staticGet_instance() {
        if (!OpenGLUtil.staticSet_instance) {
            OpenGLUtil.staticSet_instance = true;
            OpenGLUtil.instance = new OpenGLUtil();
        }
        return OpenGLUtil.instance;
    }

    public OpenGLUtil() {
        base();
    }
    

    public static OpenGLUtil getInstance() {
        return OpenGLUtil.staticGet_instance();
    }
    

    public virtual Image addImage(Image image) {
        return image;
    }
    

    public virtual void clear() {
    }
    

    public virtual void addRunnable(Runnable runnable) {
    }
}

