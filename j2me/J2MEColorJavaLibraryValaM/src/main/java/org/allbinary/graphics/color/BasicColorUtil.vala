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
// package org.allbinary.graphics.color

public class BasicColorUtil : JObject {
    private static BasicColorUtil? instance;
    private static bool staticSet_instance = false;
    private static BasicColorUtil staticGet_instance() {
        if (!BasicColorUtil.staticSet_instance) {
            BasicColorUtil.staticSet_instance = true;
            BasicColorUtil.instance = new BasicColorUtil();
        }
        return BasicColorUtil.instance;
    }
    public BasicColor[] ZERO_ARRAY;
    public int32 ALPHA;
    public bool isAlpha;
    public bool ffOpaque;

    // Java field initializers run after the base constructor
    private void initFieldsBasicColorUtil() {
    this.ZERO_ARRAY = new BasicColor[0];
    this.ALPHA = (int32) 0xFF000000;
    this.isAlpha = true;
    this.ffOpaque = true;
    }

    public BasicColorUtil() {
        base();
        this.initFieldsBasicColorUtil();
    }
    

    public static BasicColorUtil getInstance() {
        return BasicColorUtil.staticGet_instance();
    }
    

    public virtual int32 getRGB(int32 red, int32 green, int32 blue) {
        int32 value = 0;
        if (this.isAlpha) {
            if (this.ffOpaque) {
                value = this.ALPHA;
            }
        }
        value = (red << 16) | value;
        value = (green << 8) | value;
        value = blue | value;
        return value;
    }
    

    public virtual int32 getARGB(int32 alphaValue, int32 r, int32 g, int32 b) {
        return ((alphaValue << 24) & this.ALPHA) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF);
    }
    

    public virtual int32 @get(int32 alphaValue, int32 color) {
        return ((alphaValue << 24) & this.ALPHA) + color;
    }
    

    public virtual int32 invert(int32 color) {
        return (0xFFFFFF - color) | this.ALPHA;
    }
}

