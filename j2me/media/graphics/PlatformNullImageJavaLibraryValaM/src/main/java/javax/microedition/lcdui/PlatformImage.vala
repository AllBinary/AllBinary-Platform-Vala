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
// package javax.microedition.lcdui
// import org.allbinary.logic.NullUtil

//PlatformNullImageJavaLibrary
public class PlatformImage : JObject {

    public PlatformImage() {
        base();
    }
    

    public virtual JObject getImage(JObject graphicsSurface2) {
        return NullImage.NULL_IMAGE;
    }
    

    public virtual int32 getSurfaceWidth(JObject graphicsSurface2, int32 width) {
        return width;
    }
    

    public virtual int32 getSurfaceHeight(JObject graphicsSurface2, int32 height) {
        return height;
    }
    

    public virtual int32 getWidth(Image image, int32 width) {
        return width;
    }
    

    public virtual int32 getHeight(Image image, int32 height) {
        return height;
    }
    

    public virtual Graphics getGraphics(JObject graphicsSurface, int32 width, int32 height, Image image) {
        JSystem.fatal(new JException("RuntimeException", ""));
    }
    

    public virtual void drawImage(Image image, int32 x, int32 y, int32 anchor, Graphics g2, JObject g) {
    }
    

    public virtual void drawRegion(Image image, int32 x_src, int32 y_src, int32 width, int32 height, int32 transform, int32 x_dst, int32 y_dst, int32 anchor, Graphics g) {
    }
    

    public virtual void getRGB(int32[] argb, int32 offset, int32 scanlength, int32 x, int32 y, int32 width, int32 height, Image image) {
    }
    

    public virtual void setRGB(int32[] argb, int32 offset, int32 scanlength, int32 x, int32 y, int32 width, int32 height, Image image) {
    }
    

    public virtual int32[] getData(Image image) {
        return NullUtil.getInstance().NULL_INT_ARRAY;
    }
}

