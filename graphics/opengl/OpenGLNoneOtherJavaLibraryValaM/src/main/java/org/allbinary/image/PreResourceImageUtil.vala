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
// package org.allbinary.image
// import javax.microedition.khronos.opengles.GL
// import javax.microedition.lcdui.Graphics
// import javax.microedition.lcdui.Image

public class PreResourceImageUtil : JObject {
    private static PreResourceImageUtil? instance;
    private static bool staticSet_instance = false;
    private static PreResourceImageUtil staticGet_instance() {
        if (!PreResourceImageUtil.staticSet_instance) {
            PreResourceImageUtil.staticSet_instance = true;
            PreResourceImageUtil.instance = new PreResourceImageUtil();
        }
        return PreResourceImageUtil.instance;
    }

    public PreResourceImageUtil() {
        base();
    }
    

    public static PreResourceImageUtil getInstance() {
        return PreResourceImageUtil.staticGet_instance();
    }
    

    public virtual Image encapsulate(Image image) {
        return image;
    }
    

    public virtual void updateGL(GL gl, Image image) {
    }
    

    public virtual void update(Graphics graphics, Image image) {
    }
}

