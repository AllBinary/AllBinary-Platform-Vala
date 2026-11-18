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
// import org.allbinary.image.ImageCache

public class ImageScaleUtil : JObject {
    private static ImageScaleUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageScaleUtil staticGet_instance() {
        if (!ImageScaleUtil.staticSet_instance) {
            ImageScaleUtil.staticSet_instance = true;
            ImageScaleUtil.instance = new ImageScaleUtil();
        }
        return ImageScaleUtil.instance;
    }
    

    public static ImageScaleUtil getInstance() {
        return ImageScaleUtil.staticGet_instance();
    }
    

    public ImageScaleUtil() {
        base();
    }
    

    public virtual Image createImage2(ImageCache imageCache, Image originalImage, float scaleNominatorX, float scaleDenominatorX, float scaleNominatorY, float scaleDenominatorY, bool cached) {
        return this.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true);
    }
    

    public virtual Image createImage3(ImageCache imageCache, Image originalImage, float scaleNominatorX, float scaleDenominatorX, float scaleNominatorY, float scaleDenominatorY, bool cached, bool mutable) {
        return originalImage;
    }
}

