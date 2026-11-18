/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2023 AllBinary
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

public class ImageJ2MEScaleUtil : JObject {
    private static ImageJ2MEScaleUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageJ2MEScaleUtil staticGet_instance() {
        if (!ImageJ2MEScaleUtil.staticSet_instance) {
            ImageJ2MEScaleUtil.staticSet_instance = true;
            ImageJ2MEScaleUtil.instance = new ImageJ2MEScaleUtil();
        }
        return ImageJ2MEScaleUtil.instance;
    }
    

    public static ImageJ2MEScaleUtil getInstance() {
        return ImageJ2MEScaleUtil.staticGet_instance();
    }
    

    public ImageJ2MEScaleUtil() {
        base();
    }
    

    public virtual Image[] scaleArray(Image[] images, int32 width, int32 height) {
        Image[] scaledImages = new Image[images.length];
        for (int32 index = images.length; --index >= 0; ) {
            scaledImages[index] = this.scale(images[index], width, height);
        }
        return scaledImages;
    }
    

    public virtual Image scale(Image image, int32 width, int32 height) {
        int32 sourceWidth = image.getWidth();
        int32 sourceHeight = image.getHeight();
        int32[] originalData = new int32[image.getWidth() * image.getHeight()];
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight());
        int32[] scaledData = new int32[width * height];
        int32 heightRatioFactor = (8 * sourceHeight) / height;
        int32 widthRatioFactor = (8 * sourceWidth) / width;
        int32 scaledIndex = scaledData.length - 1;
        int32 dx = 0;
        int32 dy = 0;
        for (int32 index = height; --index >= 0; ) {
            dy = (index * heightRatioFactor) >> 3;
            for (int32 index2 = width; --index2 >= 0; ) {
                dx = (index2 * widthRatioFactor) >> 3;
                scaledData[scaledIndex--] = originalData[(sourceWidth * dy) + dx];
            }
        }
        Image scaledImage = Image.createRGBImage(scaledData, width, height, true);
        return scaledImage;
    }
}

