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
// import org.allbinary.logic.string.StringUtil

public class SmallBasicColorCacheFactory : JObject {
    private static SmallBasicColorCacheFactory? instance;
    private static bool staticSet_instance = false;
    private static SmallBasicColorCacheFactory staticGet_instance() {
        if (!SmallBasicColorCacheFactory.staticSet_instance) {
            SmallBasicColorCacheFactory.staticSet_instance = true;
            SmallBasicColorCacheFactory.instance = new SmallBasicColorCacheFactory();
        }
        return SmallBasicColorCacheFactory.instance;
    }
    private int32 SIZE;
    private int32[] INDEX_TO_COLOR;
    private BasicColor[] BASIC_COLOR_ARRAY;
    private int32 colorIndex;

    // Java field initializers run after the base constructor
    private void initFieldsSmallBasicColorCacheFactory() {
    this.SIZE = 255;
    this.INDEX_TO_COLOR = new int32[this.SIZE];
    this.BASIC_COLOR_ARRAY = new BasicColor[this.SIZE];
    this.colorIndex = 0;
    }
    

    public static SmallBasicColorCacheFactory getInstance() {
        return SmallBasicColorCacheFactory.staticGet_instance();
    }
    

    public SmallBasicColorCacheFactory() {
        base();
        this.initFieldsSmallBasicColorCacheFactory();
    }
    

    public virtual void add(BasicColor basicDefaultColor) {
        this.BASIC_COLOR_ARRAY[this.colorIndex] = basicDefaultColor;
        this.INDEX_TO_COLOR[this.colorIndex] = basicDefaultColor.intValue();
        this.colorIndex++;
    }
    

    public virtual BasicColor getAndOrCreate(int32 colorAsInt) {
        BasicColor basicColor = null;
        for (int32 index = 0; index < this.SIZE; index++) {
            if (this.INDEX_TO_COLOR[index] == colorAsInt) {
                return this.BASIC_COLOR_ARRAY[index];
            }
        }
        int32 ALPHA_MASK = (int32) 0xFF000000;
        basicColor = BasicColorFactory.getInstance().createInstanceAN(colorAsInt & ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil.getInstance().EMPTY_STRING);
        this.add(basicColor);
        return basicColor;
    }
}

