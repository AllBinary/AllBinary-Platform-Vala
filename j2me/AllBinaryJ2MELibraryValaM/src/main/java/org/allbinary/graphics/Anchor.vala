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
// import javax.microedition.lcdui.Graphics

public class Anchor : JObject {
    public static int32 TOP_LEFT;
    private static bool staticSet_TOP_LEFT = false;
    public static int32 staticGet_TOP_LEFT() {
        if (!Anchor.staticSet_TOP_LEFT) {
            Anchor.staticSet_TOP_LEFT = true;
            Anchor.TOP_LEFT = Graphics.TOP & Graphics.LEFT;
        }
        return Anchor.TOP_LEFT;
    }

    public Anchor() {
        base();
    }
}

