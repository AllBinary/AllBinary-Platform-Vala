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

public class NullLocationPaintable : LocationPaintable {
    private static NullLocationPaintable? instanceC;
    private static bool staticSet_instanceC = false;
    private static NullLocationPaintable staticGet_instanceC() {
        if (!NullLocationPaintable.staticSet_instanceC) {
            NullLocationPaintable.staticSet_instanceC = true;
            NullLocationPaintable.instanceC = new NullLocationPaintable();
        }
        return NullLocationPaintable.instanceC;
    }

    public NullLocationPaintable() {
        base();
    }
    

    public static NullLocationPaintable getInstance() {
        return NullLocationPaintable.staticGet_instanceC();
    }
}

