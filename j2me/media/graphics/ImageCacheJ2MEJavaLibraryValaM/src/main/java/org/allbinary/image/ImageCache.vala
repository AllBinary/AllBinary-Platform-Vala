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
// import java.io.InputStream
// import javax.microedition.lcdui.Image
// import javax.microedition.lcdui.NullImage
// import org.allbinary.J2MEUtil
// import org.allbinary.TsUtil
// import org.allbinary.data.resource.ResourceUtil
// import org.allbinary.game.gd.resource.GDResources
// import org.allbinary.logic.ABSystemWrapper
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.logic.string.StringUtil
// import org.allbinary.string.CommonStrings
// import org.allbinary.system.Memory

public class ImageCache : ImageCacheBase {
    public static ImageCache? NULL_IMAGE_CACHE;
    private static bool staticSet_NULL_IMAGE_CACHE = false;
    public static ImageCache staticGet_NULL_IMAGE_CACHE() {
        if (!ImageCache.staticSet_NULL_IMAGE_CACHE) {
            ImageCache.staticSet_NULL_IMAGE_CACHE = true;
            ImageCache.NULL_IMAGE_CACHE = new ImageCache();
        }
        return ImageCache.NULL_IMAGE_CACHE;
    }
    public CommonStrings commonStrings;
    private TsUtil tsUtil;

    // Java field initializers run after the base constructor
    private void initFieldsImageCache() {
    this.commonStrings = CommonStrings.getInstance();
    this.tsUtil = TsUtil.getInstance();
    }
    

    public ImageCache() {
        base();
        this.initFieldsImageCache();
    }
    

    public virtual void addListener(JObject renderer) {
    }
    

    public virtual int32 getIndex(JObject key) {
        GDResources gdResources = GDResources.getInstance();
        string[] resourceStringArray = gdResources.resourceStringArray;
        int32 size = resourceStringArray.length;
        for (int32 index = 0; index < size; index++) {
            if (resourceStringArray[index] == key) {
                return index;
            }
        }
        this.logUtil.putF(new StringMaker().append("unable to find key: ").append(StringUtil.getInstance().toString1(key)).toString(), this, this.commonStrings.RUN);
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public override Image @get(string caller, int32 width, int32 height) {
        int32 foundIndex = this.getIndexWH(width, height);
        Image image = this.getFromAvailable(foundIndex, width, height);
        if (image == NullImage.NULL_IMAGE) {
            this.volume += width * height;
            if (this.volume > 32000) {
                this.tsUtil.gc();
                this.volume = 0;
            }
            image = this.createImage(caller, width, height);
            int32[] widths = this.widths;
            if (this.nextIndex > widths.length - 1) {
                if (foundIndex == -1) {
                    foundIndex = this.nextIndex;
                    widths[this.nextIndex] = width;
                    this.heights[this.nextIndex] = height;
                    this.nextIndex++;
                }
                this.listOfList[foundIndex].add(image);
            }
        }
        return image;
    }
    

    public override Image getWithKey(JObject key) {
        Image image = this.getImage(key);
        if (image == NullImage.NULL_IMAGE) {
            ResourceUtil resourceUtil = ResourceUtil.getInstance();
            InputStream resourceInputStream = resourceUtil.getResourceAsStream(JString.unbox(key));
            if (resourceInputStream == null) {
                JSystem.fatal(new JException("RuntimeException", new StringMaker().append("Image resource is not available for key: ").append(StringUtil.getInstance().toString1(key)).toString()));
            }
            {
                image = this.createImageFromInputStream(key, resourceInputStream);
            } /* catch (Exception e): a thrown Java exception stops the program */
            if (J2MEUtil.isHTML()) {
            } else {
                resourceInputStream.close();
            }
            this.hashtable.put(key, image);
        }
        return image;
    }
    

    public virtual void loadImageForAnimation() {
    }
    

    public virtual void progressEnded() {
    }
    

    public virtual void runTask() {
    }
    

    public virtual bool isLazy() {
        return false;
    }
}

