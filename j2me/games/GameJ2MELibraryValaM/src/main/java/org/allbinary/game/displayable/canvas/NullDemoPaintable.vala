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
// package org.allbinary.game.displayable.canvas

public class NullDemoPaintable : JObject, DemoPaintableInterface {
    public static NullDemoPaintable? NULL_DEMO_PAINTABLE;
    private static bool staticSet_NULL_DEMO_PAINTABLE = false;
    public static NullDemoPaintable staticGet_NULL_DEMO_PAINTABLE() {
        if (!NullDemoPaintable.staticSet_NULL_DEMO_PAINTABLE) {
            NullDemoPaintable.staticSet_NULL_DEMO_PAINTABLE = true;
            NullDemoPaintable.NULL_DEMO_PAINTABLE = new NullDemoPaintable();
        }
        return NullDemoPaintable.NULL_DEMO_PAINTABLE;
    }

    public NullDemoPaintable() {
        base();
    }
    

    public virtual void showGamePaintable() {
    }
}

