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
// package org.allbinary.emulator.device
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import org.allbinary.graphics.color.BasicColor
// import org.allbinary.image.opengles.OpenGLESImage

public class TrueTypeFontUtil : TrueTypeFontUtilBase {
    private static TrueTypeFontUtil? instance;
    private static bool staticSet_instance = false;
    private static TrueTypeFontUtil staticGet_instance() {
        if (!TrueTypeFontUtil.staticSet_instance) {
            TrueTypeFontUtil.staticSet_instance = true;
            TrueTypeFontUtil.instance = new TrueTypeFontUtil();
        }
        return TrueTypeFontUtil.instance;
    }
    public OpenGLESImage fontImage;

    // Java field initializers run after the base constructor
    private void initFieldsTrueTypeFontUtil() {
    this.fontImage = OpenGLESImage.NULL_OPENGL_IMAGE;
    }
    

    public static TrueTypeFontUtil getInstance() {
        return TrueTypeFontUtil.staticGet_instance();
    }
    

    public TrueTypeFontUtil() {
        base(1);
        this.initFieldsTrueTypeFontUtil();
    }
    

    public override int32 getAsTextureSize(int32 textureSize) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public override int32 getCellSize(int32 cellSize) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual Image getFontBitmap(string filename, int32 fontSize, int32 cellSize, BasicColor basicColor) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void saveFontAtlasAsFile() {
    }
    

    public virtual Image getFontBitmapGL(GL10 gl, string filename, int32 cellSize, BasicColor basicColor) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual int32[] getFontWidths(string filename, int32 fontSize) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
}

