// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
// import javax.microedition.lcdui.Image

public class ScreenRelationalUtil : JObject {
    private static ScreenRelationalUtil? instance;
    private static bool staticSet_instance = false;
    private static ScreenRelationalUtil staticGet_instance() {
        if (!ScreenRelationalUtil.staticSet_instance) {
            ScreenRelationalUtil.staticSet_instance = true;
            ScreenRelationalUtil.instance = new ScreenRelationalUtil();
        }
        return ScreenRelationalUtil.instance;
    }

    public ScreenRelationalUtil() {
        base();
    }
    

    public static ScreenRelationalUtil getInstance() {
        return ScreenRelationalUtil.staticGet_instance();
    }
    

    public virtual float getScaleImage(Image image) {
        return this.getScaleWH(image.getWidth(), image.getHeight());
    }
    

    public virtual float getScaleWH(int32 aWidth, int32 aHeight) {
        return this.getScaleWHA(aWidth, aHeight, 20);
    }
    

    public virtual float getScaleWHA(int32 aWidth, int32 aHeight, int32 add) {
        DisplayInfoSingleton displayInfoSingleton = DisplayInfoSingleton.getInstance();
        int32[] last = displayInfoSingleton.getLast();
        float width = ((float) (last[displayInfoSingleton.WIDTH]));
        float height = ((float) (last[displayInfoSingleton.HEIGHT]));
        float largestSize = width;
        if (largestSize < height) {
            largestSize = height;
        }
        float scale = largestSize / ((float) (aWidth));
        return scale;
    }
    

    public virtual int32 getScaledHeight(int32 aWidth, int32 aHeight) {
        return ((int32) JMath.toInt32((this.getScaleWH(aWidth, aHeight) * ((float) (aHeight)))));
    }
    

    public virtual int32 getScaledHeightAdd(int32 aWidth, int32 aHeight, int32 add) {
        return ((int32) JMath.toInt32((this.getScaleWHA(aWidth, aHeight, add) * ((float) (aHeight)))));
    }
}

