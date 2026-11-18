// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

public class NullOpenGLProcessorFactory : JObject {
    private static OpenGLProcessor? instance;
    private static bool staticSet_instance = false;
    private static OpenGLProcessor staticGet_instance() {
        if (!NullOpenGLProcessorFactory.staticSet_instance) {
            NullOpenGLProcessorFactory.staticSet_instance = true;
            NullOpenGLProcessorFactory.instance = new OpenGLProcessor();
        }
        return NullOpenGLProcessorFactory.instance;
    }

    public NullOpenGLProcessorFactory() {
        base();
    }
    

    public static OpenGLProcessor getInstance() {
        return NullOpenGLProcessorFactory.staticGet_instance();
    }
}

