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
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class ImageTypeUtil : JObject {
    private static ImageTypeUtil? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static ImageTypeUtil staticGet_SINGLETON() {
        if (!ImageTypeUtil.staticSet_SINGLETON) {
            ImageTypeUtil.staticSet_SINGLETON = true;
            ImageTypeUtil.SINGLETON = new ImageTypeUtil();
        }
        return ImageTypeUtil.SINGLETON;
    }
    public string PNG;
    public string JPG;
    public string GIF;
    private BasicArrayList list;

    // Java field initializers run after the base constructor
    private void initFieldsImageTypeUtil() {
    this.PNG = "png";
    this.JPG = "jpg";
    this.GIF = "gif";
    this.list = new BasicArrayListD();
    }
    

    public ImageTypeUtil() {
        base();
        this.initFieldsImageTypeUtil();
        this.list.add(JString.box(this.JPG));
        this.list.add(JString.box(this.GIF));
        this.list.add(JString.box(this.PNG));
    }
    

    public virtual bool isSupported(string mediaFileType_parameter) {
        string mediaFileType = mediaFileType_parameter;
        mediaFileType = mediaFileType.down();
        for (int32 index = this.list.size() - 1; index >= 0; index--) {
            string name = JString.unbox(this.list.@get(index));
            if (JString.compareTo(mediaFileType, name) == 0) {
                return true;
            }
        }
        return false;
    }
    

    public static ImageTypeUtil getInstance() {
        return ImageTypeUtil.staticGet_SINGLETON();
    }
}

