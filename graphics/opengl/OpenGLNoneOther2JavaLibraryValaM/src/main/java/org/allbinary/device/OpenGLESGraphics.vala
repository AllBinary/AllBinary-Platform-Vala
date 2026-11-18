// Generated Code Do Not Modify
// package org.allbinary.device
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Font
// import javax.microedition.lcdui.Graphics
// import org.allbinary.graphics.font.FontDebugBase
// import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface
// import org.allbinary.string.CommonStrings

public class OpenGLESGraphics : Graphics, OpenGLSurfaceChangedInterface, GraphicsInterface {
    public CommonStrings commonStrings;
    public GL10 gl;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLESGraphics() {
    this.commonStrings = CommonStrings.getInstance();
    this.gl = NullGL10.NULL_GL10;
    }
    

    public OpenGLESGraphics() {
        base();
        this.initFieldsOpenGLESGraphics();
    }
    

    public virtual void updateGL(GL gl) {
    }
    

    public virtual void @set(GL gl) {
    }
    

    public virtual void init() {
    }
    

    public virtual void update() {
    }
    

    public virtual void setOrthoginalMode() {
    }
    

    public virtual void setCameraMode() {
    }
    

    public virtual GL10 getGl10() {
        return this.gl;
    }
    

    public virtual void setFontDebug(Font font, FontDebugBase fontDebug) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

