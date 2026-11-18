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
// package org.allbinary.media.image
// import javax.microedition.lcdui.Image
// import org.allbinary.graphics.color.BasicColor

public class ImageModifierUtil : JObject {
    private static ImageModifierUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageModifierUtil staticGet_instance() {
        if (!ImageModifierUtil.staticSet_instance) {
            ImageModifierUtil.staticSet_instance = true;
            ImageModifierUtil.instance = new ImageModifierUtil();
        }
        return ImageModifierUtil.instance;
    }

    public ImageModifierUtil() {
        base();
    }
    

    public static ImageModifierUtil getInstanceOrCreate() {
        return ImageModifierUtil.staticGet_instance();
    }
    

    public virtual void setColor(Image unusedOriginalImage, Image image, int32 imageIndex, BasicColor basicColor) {
    }
    

    public virtual void changeColor(Image unusedOriginalImage, Image image, int32 imageIndex, BasicColor basicColor) {
    }
    

    public virtual void setAlpha(Image originalImage, Image image, int32 imageIndex, int32 alphaInt) {
    }
    

    public virtual Image[] getImageArray(Image[] originalImageArray) {
        return originalImageArray;
    }
    

    public virtual void handleImage(Image[] imageArray, int32 index, Image image) {
    }
    

    public virtual void reset() {
    }
}

