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
// package org.allbinary.graphics.paint

public class NullPaintable : Paintable {
    private static NullPaintable? SINGLETON;
    private static bool staticSet_SINGLETON = false;
    private static NullPaintable staticGet_SINGLETON() {
        if (!NullPaintable.staticSet_SINGLETON) {
            NullPaintable.staticSet_SINGLETON = true;
            NullPaintable.SINGLETON = new NullPaintable();
        }
        return NullPaintable.SINGLETON;
    }
    

    public NullPaintable() {
        base();
    }
    

    public static Paintable getInstance() {
        return NullPaintable.staticGet_SINGLETON();
    }
}

