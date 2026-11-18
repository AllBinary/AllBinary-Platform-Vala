// Generated Code Do Not Modify
// package org.allbinary.graphics
// import org.allbinary.platform.graphics.PlatformBitmapBase

public class OpenGLBitmap : PlatformBitmapBase {
    public JObject bitmap;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLBitmap() {
    
    }
    

    public OpenGLBitmap(JObject bitmap) {
        base();
        this.initFieldsOpenGLBitmap();
        this.bitmap = bitmap;
    }
    

    public virtual void getPixels(int32[] pixels, int32 offset, int32 stride, int32 x, int32 y, int32 width, int32 height) {
    }
    

    public virtual void setPixels(int32[] pixels, int32 offset, int32 stride, int32 x, int32 y, int32 width, int32 height) {
    }
    

    public virtual void recycle() {
    }
}

