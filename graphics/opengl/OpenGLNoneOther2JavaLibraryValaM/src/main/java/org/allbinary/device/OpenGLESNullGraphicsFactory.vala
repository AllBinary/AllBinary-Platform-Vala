// Generated Code Do Not Modify
// package org.allbinary.device

public class OpenGLESNullGraphicsFactory : JObject {
    private static OpenGLESGraphics? instance;
    private static bool staticSet_instance = false;
    private static OpenGLESGraphics staticGet_instance() {
        if (!OpenGLESNullGraphicsFactory.staticSet_instance) {
            OpenGLESNullGraphicsFactory.staticSet_instance = true;
            OpenGLESNullGraphicsFactory.instance = new OpenGLESGraphics();
        }
        return OpenGLESNullGraphicsFactory.instance;
    }

    public OpenGLESNullGraphicsFactory() {
        base();
    }
    

    public static OpenGLESGraphics getInstance() {
        return OpenGLESNullGraphicsFactory.staticGet_instance();
    }
}

