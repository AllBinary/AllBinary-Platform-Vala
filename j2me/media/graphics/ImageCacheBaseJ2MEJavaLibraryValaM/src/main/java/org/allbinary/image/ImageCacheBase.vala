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
// import org.allbinary.logic.StdUtil
// import org.allbinary.logic.communication.log.LogUtil
// import org.allbinary.logic.string.StringMaker
// import org.allbinary.string.CommonLabels
// import org.allbinary.string.CommonSeps
// import org.allbinary.util.ABHashtable
// import org.allbinary.util.BasicArrayList
// import org.allbinary.util.BasicArrayListD

public class ImageCacheBase : JObject {
    public LogUtil logUtil;
    public ImageFactory imageFactory;
    public ABHashtable hashtable;
    public int32 SIZE;
    public int32[] widths;
    public int32[] heights;
    public BasicArrayList[] listOfList;
    public BasicArrayList[] availableListOfList;
    public int32 volume;
    public int32 nextIndex;

    // Java field initializers run after the base constructor
    private void initFieldsImageCacheBase() {
    this.logUtil = LogUtil.getInstance();
    this.imageFactory = ImageFactory.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.SIZE = 128;
    this.widths = new int32[this.SIZE];
    this.heights = new int32[this.SIZE];
    this.listOfList = new BasicArrayList[this.SIZE];
    this.availableListOfList = new BasicArrayList[this.SIZE];
    this.volume = 0;
    this.nextIndex = 0;
    }
    

    public ImageCacheBase() {
        base();
        this.initFieldsImageCacheBase();
        for (int32 index = this.listOfList.length - 1; index >= 0; index--) {
            this.listOfList[index] = new BasicArrayListD();
        }
        for (int32 index = this.availableListOfList.length - 1; index >= 0; index--) {
            this.availableListOfList[index] = new BasicArrayListD();
        }
    }
    

    public virtual Image getImage(JObject resourceId) {
        JObject imageCanBeNull = this.hashtable.@get(resourceId);
        if (imageCanBeNull == null) {
            return NullImage.NULL_IMAGE;
        }
        return ((Image) imageCanBeNull);
    }
    

    public virtual void releaseAll() {
        for (int32 index = this.listOfList.length - 1; index >= 0; index--) {
            this.availableListOfList[index].clear();
            this.availableListOfList[index].addAllList(this.listOfList[index]);
        }
        this.logUtil.putF(new StringMaker().append("ImageCache: ").append(this.toString()).toString(), this, "releaseAll");
    }
    

    public virtual int32 getIndexWH(int32 width, int32 height) {
        int32 foundIndex = -1;
        int32 size = this.widths.length;
        for (int32 index = 0; index < size; index++) {
            if (this.widths[index] == width && this.heights[index] == height) {
                foundIndex = index;
                return foundIndex;
            }
        }
        return foundIndex;
    }
    

    public virtual Image getFromAvailable(int32 foundIndex, int32 width, int32 height) {
        if (foundIndex != -1) {
            if (this.availableListOfList[foundIndex].size() > 0) {
                BasicArrayList list = this.availableListOfList[foundIndex];
                return ((Image) list.removeAt(list.size() - 1));
            }
        }
        return NullImage.NULL_IMAGE;
    }
    

    public virtual Image @get(string caller, int32 width, int32 height) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual Image getWithKey(JObject key) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual Image createImage(string caller, int32 width, int32 height) {
        return this.imageFactory.createImage(caller, width, height);
    }
    

    public virtual Image createImageFromInputStream(JObject key, InputStream inputStream) {
        return this.imageFactory.createImageFromInputStream_2(key, inputStream);
    }
    

    public override string toString() {
        StringMaker stringBuffer = new StringMaker();
        for (int32 index = this.nextIndex - 1; index >= 0; index--) {
            int32 width = this.widths[index];
            int32 height = this.heights[index];
            int32 total = this.listOfList[index].size();
            int32 totalAvailable = this.availableListOfList[index].size();
            stringBuffer.append(" w: ");
            stringBuffer.appendint(width);
            stringBuffer.append(" h: ");
            stringBuffer.appendint(height);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
            stringBuffer.appendint(total);
            stringBuffer.append(" available: ");
            stringBuffer.appendint(totalAvailable);
        }
        return stringBuffer.toString();
    }
    

    public virtual ABHashtable getHashtableP() {
        return this.hashtable;
    }
    

    public virtual void init(Image image) {
    }
    

    public virtual void initProgress() {
    }
}

