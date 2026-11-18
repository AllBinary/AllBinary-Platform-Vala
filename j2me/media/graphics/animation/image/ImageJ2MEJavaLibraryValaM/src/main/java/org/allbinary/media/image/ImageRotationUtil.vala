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
// import org.allbinary.graphics.Anchor

public class ImageRotationUtil : JObject {
    private static ImageRotationUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageRotationUtil staticGet_instance() {
        if (!ImageRotationUtil.staticSet_instance) {
            ImageRotationUtil.staticSet_instance = true;
            ImageRotationUtil.instance = new ImageRotationUtil();
        }
        return ImageRotationUtil.instance;
    }
    private int32 anchor;

    // Java field initializers run after the base constructor
    private void initFieldsImageRotationUtil() {
    this.anchor = Anchor.TOP_LEFT;
    }
    

    public static ImageRotationUtil getInstance() {
        return ImageRotationUtil.staticGet_instance();
    }
    

    public ImageRotationUtil() {
        base();
        this.initFieldsImageRotationUtil();
    }
    

    public virtual Image createRotatedImage(Image originalImage, int32 rotationInDegrees) {
        return originalImage;
    }
}

