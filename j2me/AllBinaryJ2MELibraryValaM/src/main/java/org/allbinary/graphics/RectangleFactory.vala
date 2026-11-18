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
// package org.allbinary.graphics

public class RectangleFactory : JObject {
    public static Rectangle? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    public static Rectangle staticGet_SINGLETON() {
        if (!RectangleFactory.staticSet_SINGLETON) {
            RectangleFactory.staticSet_SINGLETON = true;
            RectangleFactory.SINGLETON = new Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0);
        }
        return RectangleFactory.SINGLETON;
    }
    public static Rectangle[,]? ARRAY_OF_ARRAYS;
    private static bool staticSet_ARRAY_OF_ARRAYS = false;
    public static Rectangle[,] staticGet_ARRAY_OF_ARRAYS() {
        if (!RectangleFactory.staticSet_ARRAY_OF_ARRAYS) {
            RectangleFactory.staticSet_ARRAY_OF_ARRAYS = true;
            RectangleFactory.ARRAY_OF_ARRAYS = new Rectangle[0, 0];
        }
        return RectangleFactory.ARRAY_OF_ARRAYS;
    }

    public RectangleFactory() {
        base();
    }
}

