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

public class ImageToRotationImageArrayUtil : JObject {
    private static ImageToRotationImageArrayUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageToRotationImageArrayUtil staticGet_instance() {
        if (!ImageToRotationImageArrayUtil.staticSet_instance) {
            ImageToRotationImageArrayUtil.staticSet_instance = true;
            ImageToRotationImageArrayUtil.instance = new ImageToRotationImageArrayUtil();
        }
        return ImageToRotationImageArrayUtil.instance;
    }
    

    public static ImageToRotationImageArrayUtil getInstance() {
        return ImageToRotationImageArrayUtil.staticGet_instance();
    }
    

    public ImageToRotationImageArrayUtil() {
        base();
    }
    

    public virtual Image[] generate(Image image, int32 angleIncrement, int32 totalAngle) {
        ImageRotationUtil imageRotationUtil = ImageRotationUtil.getInstance();
        int32 totalFrames = totalAngle / angleIncrement;
        Image[] imageArray = new Image[totalFrames];
        imageArray[0] = image;
        for (int32 index = 1; index < totalFrames; index++) {
            imageArray[index] = imageRotationUtil.createRotatedImage(image, index * angleIncrement);
        }
        return imageArray;
    }
}

