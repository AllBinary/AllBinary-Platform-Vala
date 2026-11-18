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

public class ImageCompleteUtil : JObject {
    private static ImageCompleteUtil? instance;
    private static bool staticSet_instance = false;
    private static ImageCompleteUtil staticGet_instance() {
        if (!ImageCompleteUtil.staticSet_instance) {
            ImageCompleteUtil.staticSet_instance = true;
            ImageCompleteUtil.instance = new ImageCompleteUtil();
        }
        return ImageCompleteUtil.instance;
    }

    public ImageCompleteUtil() {
        base();
    }
    

    public static ImageCompleteUtil getInstance() {
        return ImageCompleteUtil.staticGet_instance();
    }
    

    public virtual void waitForImage(Image image, string name) {
    }
}

