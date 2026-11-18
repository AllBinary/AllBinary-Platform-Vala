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
// import javax.microedition.lcdui.Graphics

public class LocationPaintable : JObject, LocationPaintableInterface {
    private static LocationPaintable? instance;
    private static bool staticSet_instance = false;
    private static LocationPaintable staticGet_instance() {
        if (!LocationPaintable.staticSet_instance) {
            LocationPaintable.staticSet_instance = true;
            LocationPaintable.instance = new LocationPaintable();
        }
        return LocationPaintable.instance;
    }

    public LocationPaintable() {
        base();
    }
    

    public static LocationPaintable getInstance() {
        return LocationPaintable.staticGet_instance();
    }
    

    public virtual void paintXY(Graphics graphics, int32 x, int32 y) {
    }
}

