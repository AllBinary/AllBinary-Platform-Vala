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
// package org.allbinary.media.image
// import javax.microedition.lcdui.Image
// import org.allbinary.image.GameFeatureImageCacheFactory

public class ImageCreationUtil : JObject {
    private static ImageCreationUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageCreationUtil staticGet_instance() {
        if (!ImageCreationUtil.staticSet_instance) {
            ImageCreationUtil.staticSet_instance = true;
            ImageCreationUtil.instance = new ImageCreationUtil();
        }
        return ImageCreationUtil.instance;
    }
    

    public static ImageCreationUtil getInstance() {
        return ImageCreationUtil.staticGet_instance();
    }
    

    public ImageCreationUtil() {
        base();
    }
    

    public virtual Image createImageWH(int32 width, int32 height) {
        Image image = GameFeatureImageCacheFactory.getInstance().@get(JObject.className(this), width, height);
        return image;
    }
    

    public virtual Image createImage(int32 width, int32 height, float maxScaleX, float maxScaleY) {
        Image image = GameFeatureImageCacheFactory.getInstance().@get(JObject.className(this), ((int32) JMath.toInt32((((float) (width)) * maxScaleX))) + 1, ((int32) JMath.toInt32((((float) (height)) * maxScaleY))) + 1);
        return image;
    }
}

