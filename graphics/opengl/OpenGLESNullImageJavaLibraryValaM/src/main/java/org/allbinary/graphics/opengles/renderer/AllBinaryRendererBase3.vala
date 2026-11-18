/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.opengles.renderer
// import javax.microedition.khronos.opengles.GL10
// import javax.microedition.lcdui.Image
// import org.allbinary.image.opengles.OpenGLESImage
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class AllBinaryRendererBase3 : JObject {
    public BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsAllBinaryRendererBase3() {
    this.list = new BasicArrayListD();
    }

    public AllBinaryRendererBase3() {
        base();
        this.initFieldsAllBinaryRendererBase3();
    }
    

    public virtual void update(GL10 gl) {
        while (this.list.size() > 0) {
            OpenGLESImage openGLESImage = ((OpenGLESImage) this.list.removeAt(0));
            if (openGLESImage != null) {
                openGLESImage.@set(gl);
            }
        }
    }
    

    public virtual void add(Image image) {
        this.list.add(image);
    }
}

