/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// import java.io.InputStream
// import javax.microedition.lcdui.Image
// import org.allbinary.MIDPUtil

//ImageCacheBaseJavaLibrary - J2ME
public class ImageFactory : JObject {
    private static ImageFactory? instance;
    private static bool staticSet_instance = false;
    private static ImageFactory staticGet_instance() {
        if (!ImageFactory.staticSet_instance) {
            ImageFactory.staticSet_instance = true;
            ImageFactory.instance = new ImageFactory();
        }
        return ImageFactory.instance;
    }

    public ImageFactory() {
        base();
    }
    

    public static ImageFactory getInstance() {
        return ImageFactory.staticGet_instance();
    }
    

    public virtual Image createImageUrl(string url) {
        return Image.createImage(url);
    }
    

    public virtual Image createImage(string caller, int32 width, int32 height) {
        return MIDPUtil.getInstance().createImageWH(width, height);
    }
    

    public virtual Image createImageFromInputStream_2(JObject key, InputStream inputStream) {
        Image image = MIDPUtil.getInstance().createImageFromInputStream(inputStream);
        return image;
    }
    

    public virtual Image createImageFromInputStream_1(InputStream inputStream) {
        return MIDPUtil.getInstance().createImageFromInputStream(inputStream);
    }
}

