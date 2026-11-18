/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

public class NullImage : JObject {
    public static Image[]? NULL_IMAGE_ARRAY;
    private static bool staticSet_NULL_IMAGE_ARRAY = false;
    public static Image[] staticGet_NULL_IMAGE_ARRAY() {
        if (!NullImage.staticSet_NULL_IMAGE_ARRAY) {
            NullImage.staticSet_NULL_IMAGE_ARRAY = true;
            NullImage.NULL_IMAGE_ARRAY = new Image[0];
        }
        return NullImage.NULL_IMAGE_ARRAY;
    }
    public static Image? NULL_IMAGE;
    private static bool staticSet_NULL_IMAGE = false;
    public static Image staticGet_NULL_IMAGE() {
        if (!NullImage.staticSet_NULL_IMAGE) {
            NullImage.staticSet_NULL_IMAGE = true;
            NullImage.NULL_IMAGE = new Image();
        }
        return NullImage.NULL_IMAGE;
    }

    public NullImage() {
        base();
    }
}

