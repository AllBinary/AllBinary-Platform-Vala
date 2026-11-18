// Generated Code Do Not Modify
// package org.allbinary.graphics
// import java.io.IOException
// import java.io.InputStream
// import javax.microedition.lcdui.Image
// import org.allbinary.logic.NullUtil
// import org.allbinary.platform.graphics.PlatformBitmapBase
// import org.allbinary.platform.graphics.PlatformBitmapBaseFactory

public class OpenGLBitmapFactory : PlatformBitmapBaseFactory {
    private static OpenGLBitmapFactory? instance;
    private static bool staticSet_instance = false;
    private static OpenGLBitmapFactory staticGet_instance() {
        if (!OpenGLBitmapFactory.staticSet_instance) {
            OpenGLBitmapFactory.staticSet_instance = true;
            OpenGLBitmapFactory.instance = new OpenGLBitmapFactory();
        }
        return OpenGLBitmapFactory.instance;
    }
    public OpenGLBitmapConfig ARGB_8888;

    // Java field initializers run after the base constructor
    private void initFieldsOpenGLBitmapFactory() {
    this.ARGB_8888 = new OpenGLBitmapConfig(NullUtil.getInstance().NULL_OBJECT);
    }

    public OpenGLBitmapFactory() {
        base();
        this.initFieldsOpenGLBitmapFactory();
    }
    

    public static OpenGLBitmapFactory getInstance() {
        return OpenGLBitmapFactory.staticGet_instance();
    }
    

    public virtual OpenGLBitmap createBitmap_3(int32 width, int32 height, OpenGLBitmapConfig config) {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    

    public virtual OpenGLBitmap decodeStream(InputStream inputStream) {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    

    public override PlatformBitmapBase createBitmap(Image image) {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
}

